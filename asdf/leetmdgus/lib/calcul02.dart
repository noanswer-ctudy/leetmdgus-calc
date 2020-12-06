import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
  double buttonwidth = 10.0;
  double buttonheight = 10.0;
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
  String mulbutton = 'assets/multbutton.png';
  String divbutton = 'assets/divbutton.png';
  String equalbutton = 'assets/equalbutton.png';
  String percentbutton = 'assets/perbutton.png';

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
      body: GridView.count(
        crossAxisCount: 4,
        children: [
          //(
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Ink.image(
                image: AssetImage(plusbutton),
                width: buttonwidth,
                height: buttonheight,
              ),
            ),
          ),
          //)
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Ink.image(
                image: AssetImage(plusbutton),
                width: buttonwidth,
                height: buttonheight,
              ),
            ),
          ),
          //%
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Ink.image(
                image: AssetImage(percentbutton),
                width: buttonwidth,
                height: buttonheight,
              ),
            ),
          ),
          //ac
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Ink.image(
                image: AssetImage(acbutton),
                width: buttonwidth,
                height: buttonheight,
              ),
            ),
          ),
          //7
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Ink.image(
                image: AssetImage(number7),
                width: buttonwidth,
                height: buttonheight,
              ),
            ),
          ),
          //number8
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Ink.image(
                image: AssetImage(number8),
                width: buttonwidth,
                height: buttonheight,
              ),
            ),
          ),
          //9
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Ink.image(
                image: AssetImage(number9),
                width: buttonwidth,
                height: buttonheight,
              ),
            ),
          ),
          //div
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Ink.image(
                image: AssetImage(divbutton),
                width: buttonwidth,
                height: buttonheight,
              ),
            ),
          ),
          //4
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Ink.image(
                image: AssetImage(number4),
                width: buttonwidth,
                height: buttonheight,
              ),
            ),
          ),
          // 5
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Ink.image(
                image: AssetImage(number5),
                width: buttonwidth,
                height: buttonheight,
              ),
            ),
          ),
          //6
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Ink.image(
                image: AssetImage(number6),
                width: buttonwidth,
                height: buttonheight,
              ),
            ),
          ),
          //*
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Ink.image(
                image: AssetImage(mulbutton),
                width: buttonwidth,
                height: buttonheight,
              ),
            ),
          ),
          //1
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Ink.image(
                image: AssetImage(number1),
                width: buttonwidth,
                height: buttonheight,
              ),
            ),
          ),
          //2
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Ink.image(
                image: AssetImage(number2),
                width: buttonwidth,
                height: buttonheight,
              ),
            ),
          ),
          //3
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Ink.image(
                image: AssetImage(number3),
                width: buttonwidth,
                height: buttonheight,
              ),
            ),
          ),
          //-
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Ink.image(
                image: AssetImage(minusbutton),
                width: buttonwidth,
                height: buttonheight,
              ),
            ),
          ),
          //0
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Ink.image(
                image: AssetImage(number0),
                width: buttonwidth,
                height: buttonheight,
              ),
            ),
          ),
          //.
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Ink.image(
                image: AssetImage(dotbutton),
                width: buttonwidth,
                height: buttonheight,
              ),
            ),
          ),
          //=
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Ink.image(
                image: AssetImage(equalbutton),
                width: buttonwidth,
                height: buttonheight,
              ),
            ),
          ),
          //+
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Ink.image(
                image: AssetImage(plusbutton),
                width: buttonwidth,
                height: buttonheight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}