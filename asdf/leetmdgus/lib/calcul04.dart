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

  String rbracket = 'assets/rbracket.png';
  String lbracket = 'assets/lbracket.png';

  //정수인지 확인(.을 붙이기 위함)
  bool isInt = false;
  //앞에 숫자가 숫자인지 확인(연산자의 연속사용을 막음)
  bool frontnum = false;
  //연산자 확인 // 연산자 앞에 있는 숫자들을 하나로 묶기 위해 사용
  bool isOperator = false;

  //currentstate값이 연산식인지  확인

  bool isOpValue = false;
  num bracket = 0;

  bool isFirstNum = true;
  String operate = '';

  //이전 계산식이 저장되는 변수 초기화
  num asc = 0;
  //계산값 초기화
  num calculatedvalue = 0;
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
      //backgroundColor: Colors.black,
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
                  if (isOpValue == false) {
                    currentstate = ' ';
                    isOpValue = true;
                  }
                  isInt = true;
                  bracket++;
                  currentstate = currentstate + '(';
                });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image(
                  image: AssetImage(lbracket),
                  width: 100,
                  height: 100,
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
                borderRadius: BorderRadius.circular(300),
                child: Image(
                  image: AssetImage(rbracket),
                  width: 100,
                  height: 100,
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
                    operate = '%';
                  }
                });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image(
                  image: AssetImage(percentbutton),
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            //ac
            InkWell(
              onTap: () {
                setState(() {
                  isOpValue = false;
                  currentstate = '0';
                  bracket = 0;
                  asc = calculatedvalue;
                  calculatedvalue = 0;
                  isFirstNum = true;
                });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image(
                  image: AssetImage(acbutton),
                  width: 100,
                  height: 100,
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
                  if (isOpValue == false) {
                    currentstate = ' ';
                    isOpValue = true;
                  }
                  currentstate = currentstate + '7';
                  frontnum = true;
                  if (isFirstNum == true) {
                    calculatedvalue = 7;
                    isFirstNum = false;
                  } else {
                    calculatedvalue = oper(calculatedvalue, 7, operate);
                  }
                });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image(
                  image: AssetImage(number7),
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            //8
            InkWell(
              onTap: () {
                setState(() {
                  if (isOpValue == false) {
                    currentstate = ' ';
                    isOpValue = true;
                  }
                  currentstate = currentstate + '8';
                  frontnum = true;
                  if (isFirstNum == true) {
                    calculatedvalue = 8;
                    isFirstNum = false;
                  } else {
                    calculatedvalue = oper(calculatedvalue, 8, operate);
                  }
                });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image(
                  image: AssetImage(number8),
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            //9
            InkWell(
              onTap: () {
                setState(() {
                  if (isOpValue == false) {
                    currentstate = ' ';
                    isOpValue = true;
                  }
                  currentstate = currentstate + '9';
                  frontnum = true;
                  if (isFirstNum == true) {
                    calculatedvalue = 9;
                    isFirstNum = false;
                  } else {
                    calculatedvalue = oper(calculatedvalue, 9, operate);
                  }
                });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image(
                  image: AssetImage(number9),
                  width: 100,
                  height: 100,
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
                    operate = '/';
                  }
                });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image(
                  image: AssetImage(divbutton),
                  width: 100,
                  height: 100,
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
                  if (isOpValue == false) {
                    currentstate = ' ';
                    isOpValue = true;
                  }
                  currentstate = currentstate + '4';
                  frontnum = true;
                  if (isFirstNum == true) {
                    calculatedvalue = 4;
                    isFirstNum = false;
                  } else {
                    calculatedvalue = oper(calculatedvalue, 4, operate);
                  }
                });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image(
                  image: AssetImage(number4),
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            //5
            InkWell(
              onTap: () {
                setState(() {
                  if (isOpValue == false) {
                    currentstate = ' ';
                    isOpValue = true;
                  }
                  currentstate = currentstate + '5';
                  frontnum = true;
                  if (isFirstNum == true) {
                    calculatedvalue = 5;
                    isFirstNum = false;
                  } else {
                    calculatedvalue = oper(calculatedvalue, 5, operate);
                  }
                });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image(
                  image: AssetImage(number5),
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            //6
            InkWell(
              onTap: () {
                setState(() {
                  if (isOpValue == false) {
                    currentstate = ' ';
                    isOpValue = true;
                  }
                  currentstate = currentstate + '6';
                  frontnum = true;
                  if (isFirstNum == true) {
                    calculatedvalue = 6;
                    isFirstNum = false;
                  } else {
                    calculatedvalue = oper(calculatedvalue, 6, operate);
                  }
                });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image(
                  image: AssetImage(number6),
                  width: 100,
                  height: 100,
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
                    operate = '*';
                  }
                });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image(
                  image: AssetImage(mulbutton),
                  width: 100,
                  height: 100,
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
                  if (isOpValue == false) {
                    currentstate = ' ';
                    isOpValue = true;
                  }
                  currentstate = currentstate + '1';
                  frontnum = true;

                  if (isFirstNum == true) {
                    calculatedvalue = 1;
                    isFirstNum = false;
                  } else {
                    calculatedvalue = oper(calculatedvalue, 1, operate);
                  }
                });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image(
                  image: AssetImage(number1),
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            //2
            InkWell(
              onTap: () {
                setState(() {
                  if (isOpValue == false) {
                    currentstate = ' ';
                    isOpValue = true;
                  }
                  currentstate = currentstate + '2';
                  frontnum = true;

                  if (isFirstNum == true) {
                    calculatedvalue = 2;
                    isFirstNum = false;
                  } else {
                    calculatedvalue = oper(calculatedvalue, 2, operate);
                  }
                });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image(
                  image: AssetImage(number2),
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            //3
            InkWell(
              onTap: () {
                setState(() {
                  if (isOpValue == false) {
                    currentstate = ' ';
                    isOpValue = true;
                  }
                  currentstate = currentstate + '3';
                  frontnum = true;
                  if (isFirstNum == true) {
                    calculatedvalue = 3;
                    isFirstNum = false;
                  } else {
                    calculatedvalue = oper(calculatedvalue, 3, operate);
                  }
                });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image(
                  image: AssetImage(number3),
                  width: 100,
                  height: 100,
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
                borderRadius: BorderRadius.circular(300),
                child: Image(
                  image: AssetImage(minusbutton),
                  width: 100,
                  height: 100,
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
                  if (operate != '/' && operate != '%') {
                    currentstate = currentstate + '0';
                    frontnum = true;
                    if (isFirstNum == true) {
                      calculatedvalue = 0;
                      isFirstNum = false;
                    } else {
                      calculatedvalue = oper(calculatedvalue, 0, operate);
                    }
                  }
                });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image(
                  image: AssetImage(number0),
                  width: 100,
                  height: 100,
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
                borderRadius: BorderRadius.circular(300),
                child: Image(
                  image: AssetImage(dotbutton),
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            //=
            InkWell(
              onTap: () {
                setState(() {
                  if (frontnum == true && bracket == 0) {
                    isOpValue = false;
                    isInt = true;
                    currentstate = currentstate + '=';
                    frontnum = false;
                    currentstate = calculatedvalue.toString();
                    operate = '';
                  }
                });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image(
                  image: AssetImage(equalbutton),
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            //+
            InkWell(
              onTap: () {
                setState(() {
                  if (frontnum == true) {
                    isInt = true;
                    currentstate = currentstate + '+';
                    frontnum = false;
                    operate = '+';
                  }
                });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image(
                  image: AssetImage(plusbutton),
                  width: 100,
                  height: 100,
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}

num oper(num num1, num num2, String operate) {
  num result;
  if (operate == '+') {
    result = num1 + num2;
  } else if (operate == '-') {
    result = num1 - num2;
  } else if (operate == '*') {
    result = num1 * num2;
  } else if (operate == '/') {
    if (num2 != 0) {
      result = num1 / num2;
    }
  } else if (operate == '%') {
    if (num2 != 0) {
      result = num1 % num2;
    }
  }
  return result;
}
