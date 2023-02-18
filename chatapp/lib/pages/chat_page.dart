import 'package:flutter/material.dart';
void main() {
  runApp(
      MaterialApp(
        home: chat(),
      )
  );
}
class chat extends StatefulWidget{
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
      // body: Container(
      //   color: Colors.deepOrangeAccent,
      //   child: Column(
      //     children: <Widget>[
      //       Container(
      //         color: Colors.amber,
      //         padding: EdgeInsets.all(10.0),
      //         child: Row(
      //
      //           children: [
      //             Text('Message'),
      //
      //           ],
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      body:Container(
        // color: Colors.black,
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[

            Expanded(
              flex: 3,
              child: ListView(
                children:  [
                  ChatBubble(
                    text: 'How was the concert?',
                    isCurrentUser: false,
                  ),
                  ChatBubble(
                    text: 'Awesome! Next time you gotta come as well!',
                    isCurrentUser: true,
                  ),
                  ChatBubble(
                    text: 'Ok, when is the next date?',
                    isCurrentUser: false,
                  ),
                  ChatBubble(
                    text: 'They\'re playing on the 20th of November',
                    isCurrentUser: true,
                  ),
                  ChatBubble(
                    text: 'Let\'s do it!',
                    isCurrentUser: true,
                  ),
                  ChatBubble(
                    text: 'Let\'s do it!',
                    isCurrentUser: false,
                  ),
                  ChatBubble(
                    text: 'Let\'s do it!',
                    isCurrentUser: true,
                  ),
                  ChatBubble(
                    text: 'Let\'s do it!',
                    isCurrentUser: false,
                  ),
                  ChatBubble(
                    text: 'Let\'s do it!',
                    isCurrentUser: true,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  IconButton(onPressed: (){},
                      icon: Icon(
                        Icons.send,
                        color: Colors.blue,
                      )),

                ],
              ),

            ),



          ],

        ),

      ),
    );
  }
}
class ChatBubble extends StatelessWidget {
  const ChatBubble({
    Key? key,
    required this.text,
    required this.isCurrentUser,


      }) : super(key: key);
  final String text;
  final bool isCurrentUser;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // asymmetric padding
      padding: EdgeInsets.fromLTRB(
        isCurrentUser ? 64.0 : 16.0,
        4,
        isCurrentUser ? 16.0 : 64.0,
        4,
      ),
      child: Align(
        // align the child within the container
        alignment: isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
        child: DecoratedBox(
          // chat bubble decoration
          decoration: BoxDecoration(
            color: isCurrentUser ? Colors.blue : Colors.grey[300],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: isCurrentUser ? Colors.white : Colors.black87),
            ),
          ),
        ),
      ),
    );
  }
}
