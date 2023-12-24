import 'package:flutter/material.dart';
import 'package:wahstapp_ui/colors.dart';
import 'package:wahstapp_ui/info.dart';
import 'package:wahstapp_ui/screens/mobile_chat_screen.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0.8),
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: info.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MobileChatScreen()),
                      );
                    },
                    child: ListTile(
                      title: Text(info[index]['name'].toString()),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          info[index]['message'].toString(),
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(info[index]['profilePic'].toString()),
                      ),
                      trailing: Text(
                        info[index]['time'].toString(),
                        style: const TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ),
                  ),
                  const Divider(
                    color: dividerColor,
                    indent: 85,
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
