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
  final double buttonwidth = 50;
  final double buttonheight = 10;
  final double rad = 500.0;

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
      body: Column(
        children: [
          SizedBox(height: 40,),
          Text(currentstate,style: TextStyle(fontSize: 30)),
          SizedBox(height: 10,),
          
          //( ) % AC
          Row(children: [
            //(
            InkWell(
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(rad),
                child: Image(
                  image: AssetImage(plusbutton),
                  width: 100,
                  height: buttonheight,
                ),
              ),
            ),
            //)
            InkWell(
              onTap: () {setState(() {
                
              });},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(rad),
                child: Image(
                  image: AssetImage(plusbutton),
                  width: buttonwidth,
                  height: buttonheight,
                ),
              ),
            ),
            //%
            InkWell(
              onTap: () {setState(() {
                
              });},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(rad),
                child: Image(
                  image: AssetImage(percentbutton),
                  width: buttonwidth,
                  height: buttonheight,
                ),
              ),
            ),
            //ac
            InkWell(
              onTap: () {setState(() {
                
              });},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(rad),
                child: Image(
                  image: AssetImage(acbutton),
                  width: buttonwidth,
                  height: buttonheight,
                ),
              ),
            ),
          ]),
          
          // 7 8 9 / 
          Row(children: [
            //7
            InkWell(
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(rad),
                child: Image(
                  image: AssetImage(number7),
                  width: buttonwidth,
                  height: buttonheight,
                ),
              ),
            ),
            //8
            InkWell(
              onTap: () {setState(() {
                
              });},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(rad),
                child: Image(
                  image: AssetImage(number8),
                  width: buttonwidth,
                  height: buttonheight,
                ),
              ),
            ),
            //9
            InkWell(
              onTap: () {setState(() {
                
              });},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(rad),
                child: Image(
                  image: AssetImage(number9),
                  width: buttonwidth,
                  height: buttonheight,
                ),
              ),
            ),
            //div
            InkWell(
              onTap: () {setState(() {
                
              });},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(rad),
                child: Image(
                  image: AssetImage(divbutton),
                  width: buttonwidth,
                  height: buttonheight,
                ),
              ),
            ),
          ]),
          // 4 5 6  *
          Row(children: [
            //4
            InkWell(
              onTap: () {setState((){

              });},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(rad),
                child: Image(
                  image: AssetImage(number4),
                  width: buttonwidth,
                  height: buttonheight,
                ),
              ),
            ),
            //5
            InkWell(
              onTap: () {setState(() {
                
              });},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(rad),
                child: Image(
                  image: AssetImage(number5),
                  width: buttonwidth,
                  height: buttonheight,
                ),
              ),
            ),
            //6
            InkWell(
              onTap: () {setState(() {
                
              });},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(rad),
                child: Image(
                  image: AssetImage(number6),
                  width: buttonwidth,
                  height: buttonheight,
                ),
              ),
            ),
            //mul
            InkWell(
              onTap: () {setState(() {
                
              });},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(rad),
                child: Image(
                  image: AssetImage(mulbutton),
                  width: buttonwidth,
                  height: buttonheight,
                ),
              ),
            ),
          ]),
          // 1 2 3 -
          Row(children: [
            //1
            InkWell(
              onTap: () {setState((){

              });},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(rad),
                child: Image(
                  image: AssetImage(number1),
                  width: buttonwidth,
                  height: buttonheight,
                ),
              ),
            ),
            //2
            InkWell(
              onTap: () {setState(() {
                
              });},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(rad),
                child: Image(
                  image: AssetImage(number2),
                  width: buttonwidth,
                  height: buttonheight,
                ),
              ),
            ),
            //3
            InkWell(
              onTap: () {setState(() {
                
              });},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(rad),
                child: Image(
                  image: AssetImage(number3),
                  width: buttonwidth,
                  height: buttonheight,
                ),
              ),
            ),
            //-
            InkWell(
              onTap: () {setState(() {
                
              });},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(rad),
                child: Image(
                  image: AssetImage(minusbutton),
                  width: buttonwidth,
                  height: buttonheight,
                ),
              ),
            ),
          ]),
          // 1 2 3 -
          Row(children: [
            //0
            InkWell(
              onTap: () {setState((){

              });},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(rad),
                child: Image(
                  image: AssetImage(number0),
                  width: buttonwidth,
                  height: buttonheight,
                ),
              ),
            ),
            //.
            InkWell(
              onTap: () {setState(() {
                
              });},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(rad),
                child: Image(
                  image: AssetImage(dotbutton),
                  width: buttonwidth,
                  height: buttonheight,
                ),
              ),
            ),
            //=
            InkWell(
              onTap: () {setState(() {
                
              });},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(rad),
                child: Image(
                  image: AssetImage(equalbutton),
                  width: buttonwidth,
                  height: buttonheight,
                ),
              ),
            ),
            //+
            InkWell(
              onTap: () {setState(() {
                
              });},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(rad),
                child: Image(
                  image: AssetImage(plusbutton),
                  width: buttonwidth,
                  height: buttonheight,
                ),
              ),
            ),
          ]),

        ],
      ),
    );
  }
}
