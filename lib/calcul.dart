import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double buttonwith = 40.0;
  double buttonheight = 40.0;
  double rad = 20.0;

  String number0 = 'assets/0.png';
  String number1 = 'assets/1.png';
  String number2 = 'assets/2.png';
  String number3 = 'assets/3.png';
  String number4 = 'assets/4.png';
  String number5 = 'assets/5.png';
  String number6 = 'assets/6.png';
  String number7 = 'assets/7.png';
  String number8 = 'assets/8.png';
  String number9 = 'assets/9.png';
  
  String dotbutton = 'assets/dotbutton.png';
  String acbutton = 'assets/acbutton.png';
  String cebutton = 'assets/cebutton.png';

  String plusbutton = 'assets/plusbutton.png';
  String minusbutton = 'assets/minusbutton.png';
  String mulbutton = 'assets/mulbutton.png';
  String divbutton = 'assets/divbutton.png';
  String equalbutton = 'assets/equalbutton.png';

  //이전 계산식이 저장되는 변수 초기화
  double asc = 0;
  //계산값 초기화
  double calculatedvalue = 0;
  //현재 계산식이 저장되는 변수초기화
  String currentstate = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '승현이 계산기',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 40,
              height: 50,
            ),
            GestureDetector(
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(rad),
                child: Image.asset(
                  number1,
                  width: buttonwith,
                  height: buttonheight,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(rad),

              ),
            )
          ],
        ),
      ),
    );
  }
}
