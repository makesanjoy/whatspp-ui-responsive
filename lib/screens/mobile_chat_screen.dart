import 'package:flutter/material.dart';
import 'package:wahstapp_ui/colors.dart';
import 'package:wahstapp_ui/info.dart';
import 'package:wahstapp_ui/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[0]['name'].toString(),
        ),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Column(children: [
        const Expanded(child: ChatList()),
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: mobileChatBoxColor,
            prefixIcon: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.emoji_emotions,
                color: Colors.grey,
              ),
            ),
            suffixIcon: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.camera_alt,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.attach_file,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.currency_rupee,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            hintText: 'Type a message',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(width: 0, style: BorderStyle.none),
            ),
          ),
        )
      ]),
    );
  }
}
