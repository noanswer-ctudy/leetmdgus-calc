import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String input = ' My First App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              input,
            ),
            elevation: 4,
          ),
          body: Column(
            children: [
              Text('asdf'),
              Text('asdf'),
              ElevatedButton(
                onPressed: () {
                  input = 'asdfasdf';
                  setState(() {});
                },
                child: Text('asdfdsaf'),
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(300),
                  child: Image(
                    height: 100,
                    width: 100,
                    image: AssetImage("assets/img.png"),
                  )),
            ],
          )),
    );
  }
}
