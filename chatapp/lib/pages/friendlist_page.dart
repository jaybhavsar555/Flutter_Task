import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      home: friendlist(),
    )
  );
}
class friendlist extends StatelessWidget {
  const friendlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FriendList'),
        backgroundColor: Colors.black26,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(10.0),
        // color: Colors.lightBlue,
        child: Column(

          children: <Widget>[
              Container(
                // color: Colors.grey,
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget> [
                      const CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.green,
                      ),
                    const Text('Friend 1',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(onPressed: (){},
                        icon: const Icon(
                          Icons.play_arrow,
                        ))
        ],
                ),
              )],
        ),
      ),
    );
  }
}
