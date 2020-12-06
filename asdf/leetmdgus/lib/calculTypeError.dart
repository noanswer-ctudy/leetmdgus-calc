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
  final num buttonwidth = 50;
  final num buttonheight = 10;
  final num rad = 500.0;

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

  //정수인지 확인(.을 붙이기 위함)
  bool isInt = false;
  //앞에 숫자가 숫자인지 확인(연산자의 연속사용을 막음)
  bool frontnum = false;
  //연산자 확인 // 연산자 앞에 있는 숫자들을 하나로 묶기 위해 사용
  bool isOperator = false;
  num bracket = 0;

  //이전 계산식이 저장되는 변수 초기화
  num asc = 0;
  //계산값 초기화
  num calculatedvalue = 0;
  //현재 계산식이 저장되는 변수초기화
  String currentstate = '';

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
          SizedBox(
            height: 40.0,
          ),
          Text(currentstate, style: TextStyle(fontSize: 30)),
          SizedBox(
            height: 10.0,
          ),

          //( ) % AC
          Row(children: [
            //(
            InkWell(
              onTap: () {
                setState(() {
                  isInt = true;
                  bracket++;
                  currentstate = currentstate + '(';
                });
              },
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
              onTap: () {
                setState(() {
                  if (bracket != 0 && frontnum == true) {
                    isInt = true;
                    currentstate = currentstate + ')';
                    bracket--;
                  }
                });
              },
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
              onTap: () {
                setState(() {
                  if (frontnum == true) {
                    isInt = true;
                    currentstate = currentstate + '%';
                    frontnum = false;
                  }
                });
              },
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
              onTap: () {
                setState(() {
                  currentstate = '0';
                  bracket = 0;
                });
              },
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
              onTap: () {
                setState(() {
                  currentstate = currentstate + '7';
                  frontnum = true;
                });
              },
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
              onTap: () {
                setState(() {
                  currentstate = currentstate + '8';
                  frontnum = true;
                });
              },
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
              onTap: () {
                setState(() {
                  currentstate = currentstate + '9';
                  frontnum = true;
                });
              },
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
              onTap: () {
                setState(() {
                  if (frontnum == true) {
                    isInt = true;
                    currentstate = currentstate + '/';
                    frontnum = false;
                  }
                });
              },
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
              onTap: () {
                setState(() {
                  currentstate = currentstate + '4';
                  frontnum = true;
                });
              },
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
              onTap: () {
                setState(() {
                  currentstate = currentstate + '5';
                  frontnum = true;
                });
              },
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
              onTap: () {
                setState(() {
                  currentstate = currentstate + '6';
                  frontnum = true;
                });
              },
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
              onTap: () {
                setState(() {
                  if (frontnum == true) {
                    isInt = true;
                    currentstate = currentstate + '*';
                    frontnum = false;
                  }
                });
              },
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
              onTap: () {
                setState(() {
                  currentstate = currentstate + '1';
                  frontnum = true;
                });
              },
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
              onTap: () {
                setState(() {
                  currentstate = currentstate + '2';
                  frontnum = true;
                });
              },
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
              onTap: () {
                setState(() {
                  currentstate = currentstate + '3';
                  frontnum = true;
                });
              },
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
              onTap: () {
                setState(() {
                  if (frontnum == true) {
                    isInt = true;
                    currentstate = currentstate + '-';
                    frontnum = false;
                  }
                });
              },
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
          // 0 . = +
          Row(children: [
            //0
            InkWell(
              onTap: () {
                setState(() {
                  currentstate = currentstate + '0';
                  frontnum = true;
                });
              },
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
              onTap: () {
                setState(() {
                  if (frontnum == true && isInt == true) {
                    currentstate = currentstate + '.';
                    isInt = false;
                  }
                });
              },
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
              onTap: () {
                setState(() {
                  if (frontnum = true) {
                    isInt = true;
                    currentstate = currentstate + '=';
                    frontnum = false;
                  }
                });
              },
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
              onTap: () {
                setState(() {
                  if (frontnum = true) {
                    isInt = true;
                    currentstate = currentstate + '+';
                    frontnum = false;
                  }
                });
              },
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
