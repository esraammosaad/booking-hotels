import 'package:booking_hotels/core/utils/styles.dart';
import 'package:booking_hotels/features/help_and_support/data/models/message_model.dart';
import 'package:booking_hotels/features/help_and_support/presentation/manager/chat_cubit/chat_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'chat_bubble.dart';
import 'chat_friend_bubble.dart';
import 'custom_text_feild.dart';

class HelpAndSupportViewBody extends StatefulWidget {
  const HelpAndSupportViewBody({Key? key}) : super(key: key);

  static final ScrollController scrollController = ScrollController();

  @override
  State<HelpAndSupportViewBody> createState() => _HelpAndSupportViewBodyState();
}

class _HelpAndSupportViewBodyState extends State<HelpAndSupportViewBody> {
  List<MessageModel> messageList = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: BlocConsumer<ChatCubit, ChatState>(
              listener: (context,state){
                if(state is ChatSuccess){
                  messageList=state.messagesList;


                }


              },
              builder: (context, state) {
                return ListView.separated(
                    separatorBuilder: (context, index) =>
                        Center(
                          child: Text(
                            DateFormat.yMEd()
                                .add_jm()
                                .format(messageList[index].createdAt),
                            style: Styles.textStyle16.copyWith(
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(0, 0, 0, 0.70)),
                          ),
                        ),
                    reverse: true,
                    controller: HelpAndSupportViewBody.scrollController,
                    itemCount: messageList.length,
                    itemBuilder: (context, index) {
                      return (FirebaseAuth.instance.currentUser != null &&
                          FirebaseAuth.instance.currentUser!.emailVerified)
                          ? ChatBubble(
                        message: messageList[index].message,
                      )
                          : ChatBubbleFriend(
                          message: messageList[index].message);
                    });
              },
            )),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: CustomTextField(),
        ),
      ],
    );
  }
}
