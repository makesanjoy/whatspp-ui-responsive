import 'package:flutter/material.dart';
import 'package:wahstapp_ui/info.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(itemCount: info.length,
      itemBuilder: (context,index){

      },),
    );
  }
}