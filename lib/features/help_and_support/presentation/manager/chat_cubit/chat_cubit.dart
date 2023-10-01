import 'package:bloc/bloc.dart';
import 'package:booking_hotels/features/help_and_support/presentation/views/widgets/help_and_support_view_body.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/animation.dart';
import 'package:meta/meta.dart';
import '../../../../../constants.dart';
import '../../../data/models/message_model.dart';
part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());
  CollectionReference<Map<String, dynamic>> messages =
      FirebaseFirestore.instance.collection(kCollectionName);



  sendMessage({required String message,}) async {
    await messages.add(
        MessageModel(message: message, createdAt: DateTime.now(),)
            .toJson());
    HelpAndSupportViewBody.scrollController.animateTo(
      0,
      curve: Curves.easeOut,
      duration: const Duration(milliseconds: 300),
    );

  }

   getMessage() {
    List<MessageModel> messagesList = [];

    messages.orderBy('createdAt', descending: true).snapshots().listen((event) {
      messagesList.clear();
      for (int i = 0; i <event.docs.length; i++) {


        messagesList.add(MessageModel.fromJson(event.docs[i]));


      }
      emit(ChatSuccess(messagesList: messagesList));
    });

  }
}
