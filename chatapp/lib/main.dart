import 'package:flutter/material.dart';

void main() {
  runApp( const MaterialApp(
    home: Home(),
  ));
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat App'),
        backgroundColor: Colors.black26,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding:EdgeInsets.all(20.0),
          margin: EdgeInsets.all(60.0),
          child: Column(

            children: <Widget>[
             const Text('Enter Your Name'),

              Container(
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(

                        border: OutlineInputBorder(),

                    ),
                  ),
                  

                ),

              ),
              ElevatedButton(onPressed: (){},
                  
                  child: Text('Submit')
              )
            ],
          ),
        ),
      ),
    );
  }
}


