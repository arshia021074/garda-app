import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<String> messages = [];
  TextEditingController controller = TextEditingController();

  void send() {
    setState(() {
      messages.add(controller.text);
    });
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("? ???? ????????"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/tehran_background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView(
                children: messages
                    .map((m) => ListTile(
                          title: Container(
                            padding: EdgeInsets.all(8),
                            color: Colors.white70,
                            child: Text(m),
                          ),
                        ))
                    .toList(),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(controller: controller),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: send,
              )
            ],
          )
        ],
      ),
    );
  }
}
