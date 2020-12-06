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
  int like = 0;
  String img = "assets/img.png";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('좋아요!! + ' + like.toString()),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Image(image: AssetImage(img),
              width: 100,
              height: 100,
              ),
            ),
            // Image(
            //   width: 500,
            //   height: 100,
            //   image: AssetImage(img),
            // ),
            
            Text(
              '승현이',
              style: TextStyle(fontSize: 30),
            ),
            IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {
                  setState(() {
                    like++;  
                  });
                },),
            
          ],
        ),
      ),
    );
  }
}
