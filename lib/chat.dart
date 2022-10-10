import 'dart:io';

import 'package:flutter/material.dart';
import 'new_message_widget.dart';
import 'messages_widget.dart';
import 'main.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage(title: 'mychat')),
              );
            }
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          title: const Text('Messages'),
          actions: [
            IconButton(
               iconSize: 45,
               icon: Image.asset('assets/switch4.png'),

               onPressed: () {

               },
            ),
          ],
        ),
        body: SafeArea(
            child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/PNG.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Expanded(child: Container(
                padding: EdgeInsets.all(10),
                //child:MessagesWidget() ,
              )
              ),
              NewMessageWidget()
            ],
          ),
        )));
  }
}




