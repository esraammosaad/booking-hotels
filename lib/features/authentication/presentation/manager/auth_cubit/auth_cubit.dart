import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({this.emailController, this.passwordController})
      : super(AuthInitial());

  TextEditingController? emailController;
  TextEditingController? passwordController;

  Future<void> registerUser(
      {required String email, required String password}) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      FirebaseAuth.instance.currentUser!.sendEmailVerification();
      emit(AuthSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(AuthFailure(
            dialogType: DialogType.error,
            title: 'Error',
            desc: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(AuthFailure(
            dialogType: DialogType.error,
            title: 'Error',
            desc: 'The account already exists for that email.'));
      }
    } catch (e) {}
  }

  Future<void> loginUser(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      // emit(AuthSuccess());
      if (credential.user!.emailVerified) {
        emit(AuthSuccess());
      } else {
        emit(AuthFailure(
            dialogType: DialogType.info,
            title: 'Info',
            desc: 'Please verify your email address.'));
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(AuthFailure(
            dialogType: DialogType.error,
            title: 'Error',
            desc: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(AuthFailure(
            dialogType: DialogType.error,
            title: 'Error',
            desc: 'Wrong password provided for that user.'));
      }
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser =
          await GoogleSignIn(scopes: ['profile', 'email']).signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
      emit(AuthSuccess());
    } on FirebaseException catch (e) {
      emit(AuthFailure(
          desc: e.code, dialogType: DialogType.error, title: 'Error'));
      debugPrint(e.code);
    }
  }

  Future<void> signInWithFaceBook() async {
    try {
      final LoginResult loginResult = await FacebookAuth.instance.login();

      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);

      FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
      emit(AuthSuccess());
    } on FirebaseException catch (e) {
      emit(AuthFailure(
          desc: e.code, dialogType: DialogType.error, title: 'Error'));
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> logOutUser() async {
    await FirebaseAuth.instance.signOut();
    GoogleSignIn googleSignIn = GoogleSignIn();
    googleSignIn.disconnect();
    emit(AuthSuccess());
  }
}
