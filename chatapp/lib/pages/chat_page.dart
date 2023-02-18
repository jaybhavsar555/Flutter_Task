import 'package:flutter/material.dart';
void main() {
  runApp(
      MaterialApp(
        home: chat(),
      )
  );
}
class chat extends StatefulWidget {
  const chat({Key? key}) : super(key: key);

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
        centerTitle: true,
        backgroundColor: Colors.black26,
      ),
      body: Container(
        color: Colors.deepOrangeAccent,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.amber,
              padding: EdgeInsets.all(10.0),
              child: Row(
                
                children: [
                  Text('Message'),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
