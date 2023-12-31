part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}
class AuthSuccess extends AuthState {}

class AuthFailure extends AuthState {
  final String desc;
  final DialogType dialogType;
  final String title;

  AuthFailure({
    required this.desc,
    required this.dialogType,
    required this.title,
  });
}