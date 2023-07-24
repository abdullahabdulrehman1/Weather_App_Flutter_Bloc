import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  final String message;
  final bool isSentByMe;

  MessageTile({required this.message, required this.isSentByMe});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage('assets/container_back.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Text(
          message,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class ChatScreen extends StatelessWidget {
  final List<String> messages = [
    "Hello!",
    "Hi there!",
    "This is a custom message tile.",
    "It has a background image.",
    "You can use it for chat messages.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chat Screen')),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          bool isSentByMe = index % 2 == 0; // Alternate message alignment
          return MessageTile(
            message: messages[index],
            isSentByMe: isSentByMe,
          );
        },
      ),
    );
  }
}
