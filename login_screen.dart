import 'package:flutter/material.dart';
import 'chat_screen.dart';

class LoginScreen extends StatelessWidget {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/tehran_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            color: Colors.white70,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("? ???? ????"),
                TextField(
                  controller: controller,
                  decoration: InputDecoration(labelText: "?? ????"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ChatScreen()),
                    );
                  },
                  child: Text("????"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
