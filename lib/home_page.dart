import 'package:chartme/theme.dart/light_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

// ignore: camel_case_types
class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

// ignore: camel_case_types
class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: light_theme.colorScheme.primary,
        actions: [
          PopupMenuButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              position: PopupMenuPosition.under,
              icon: Icon(CupertinoIcons.add_circled),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: "new chart",
                    child: ListTile(
                      leading: const Icon(CupertinoIcons.chat_bubble_2_fill),
                      title: const Text("group chat"),
                      onTap: () {
                        ZIMKit().showDefaultNewGroupChatDialog(context);
                      },
                    ),
                  ),
                  PopupMenuItem(
                    value: "new chart",
                    child: ListTile(
                      leading: const Icon(CupertinoIcons.chat_bubble),
                      title: const Text("new_chart"),
                      onTap: () {
                        ZIMKit().showDefaultNewPeerChatDialog(context);
                      },
                    ),
                  )
                ];
              })
        ],
      ),
      body: ZIMKitConversationListView(
        onPressed: (context, conversation, defaultAction) {
          MaterialPageRoute(builder: (context) {
            return ZIMKitMessageListPage(
              conversationID: conversation.id,
              conversationType: conversation.type,
            );
          });
        },
      ),
    );
  }
}
