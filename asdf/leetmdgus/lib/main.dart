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
  //정수인지 확인(.을 붙이기 위함)
  bool isInt = false;
  //앞에 숫자가 숫자인지 확인(연산자의 연속사용을 막음)
  bool frontnum = false;
  //연산자 확인 // 연산자 앞에 있는 숫자들을 하나로 묶기 위해 사용
  bool isOperator = false;

  //currentstate값이 연산식인지  확인

  bool isOpValue = false;
  bool isFirstBracket= true;
  num bracket = 0;
  bool isFrontDot = false;
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
      // backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 30.0,
          ),
          Text('asc:'+asc.toString(), style: TextStyle(fontSize: 20)),
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
              child: Button(button: 'lbracket'),
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
              child: Button(button: 'rbracket'),
            ),
            //%
            InkWell(
              onTap: () {
                setState(() {
                  if(frontnum == true){
                    currentstate+='%';
                    frontnum = false;
                    isFrontDot = false;
                  } 
                });
              },
              child: Button(button: 'percentbutton'),
            ),
            //ac
            InkWell(
              onTap: () {
                setState(() {
                  currentstate = '0';
                  frontnum = false;
                  isFrontDot = false;
                  bracket = 0;
                  isOpValue = false;
                });
              },
              child: Button(button: 'acbutton'),
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
                  currentstate += '7';
                  frontnum = true;
                });
              },
              child: Button(button: 'number7',)
            ),
            //8
            InkWell(
              onTap: () {
                setState(() {
                  if (isOpValue == false) {
                    currentstate = ' ';
                    isOpValue = true;
                  }
                  currentstate += '8';
                  frontnum = true;
                });
              },
              child: Button(button: 'number8')
            ),
            //9
            InkWell(
              onTap: () {
                setState(() {
                  if (isOpValue == false) {
                    currentstate = ' ';
                    isOpValue = true;
                  }
                  currentstate += '9';
                  frontnum = true;
                });
              },
              child: Button(button: 'number9',)
            ),
            //div
            InkWell(
              onTap: () {
                setState(() {
                  if(frontnum == true){
                    currentstate+='/';
                    frontnum = false;
                    isFrontDot = false;
                  }
                });
              },
              child: Button(button: 'divbutton',)
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
                  currentstate += '4';
                  frontnum = true;
                });
              },
              child: Button(button: 'number4',)
            ),
            //5
            InkWell(
              onTap: () {
                setState(() {
                  if (isOpValue == false) {
                    currentstate = ' ';
                    isOpValue = true;
                  }
                  currentstate += '5';
                  frontnum = true;

                });
              },
              child: Button(button: 'number5',)
            ),
            //6
            InkWell(
              onTap: () {
                setState(() {
                  if (isOpValue == false) {
                    currentstate = ' ';
                    isOpValue = true;
                  }
                  currentstate += '6';
                  frontnum = true;
                });
              },
              child: Button(button: 'number6',)
            ),
            //mul
            InkWell(
              onTap: () {
                setState(() {
                  if(frontnum == true){
                    currentstate+='*';
                    frontnum = false;
                    isFrontDot = false;
                  }
                });
              },
              child: Button(button: 'mulbutton',)
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
                  currentstate += '1';
                  frontnum = true;
                });
              },
              child: Button(button: 'number1',)
            ),
            //2
            InkWell(
              onTap: () {
                setState(() {
                  if (isOpValue == false) {
                    currentstate = ' ';
                    isOpValue = true;
                  }
                  currentstate += '2';
                  frontnum = true;

                });
              },
              child: Button(button: 'number2',)
            ),
            //3
            InkWell(
              onTap: () {
                setState(() {
                  if (isOpValue == false) {
                    currentstate = ' ';
                    isOpValue = true;
                  }
                  currentstate += '3';
                  frontnum = true;
                });
              },
              child: Button(button: 'number3',)
            ),
            //-
            InkWell(
              onTap: () {
                setState(() {
                  if(frontnum == true){
                    currentstate+='-';
                    frontnum = false;
                    isFrontDot = false;
                  }
                });
              },
              child: Button(button: 'minusbutton')
            ),
          ]),
          // 0 . = +
          Row(children: [
            //0
            InkWell(
              onTap: () {
                setState(() {
                  if (isOpValue == false) {
                    currentstate = ' ';
                    isOpValue = true;
                  }
                  currentstate += '0';
                  frontnum = true;
                });
              },
              child: Button(button: 'number0')
            ),
            //.
            InkWell(
              onTap: () {
                setState(() {

                });
              },
              child: Button(button: 'dotbutton'),
            ),
            //=
            InkWell(
              onTap: () {
                setState(() {
                  asc = calculatedvalue;
                  currentstate = calculatedvalue.toString();
                  frontnum = false;
                  isOpValue = false;
                  isFrontDot = false;
                });
              },
              child: Button(button: 'equalbutton',)
            ),
            //+
            InkWell(
              onTap: () {
                setState(() {
                  if(frontnum == true){
                    currentstate+='+';
                    frontnum = false;
                    isFrontDot = false;
                  }
                });
              },
              child: Button(button: 'plusbutton'),
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

class Button extends StatefulWidget {
  Button({this.button});
  final String button;

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  String butt;
  @override
  Widget build(BuildContext context) {
    switch (widget.button) {
      case 'number0':
        butt = 'assets/0.png';
        break;
      case 'number1':
        butt = 'assets/1.png';
        break;
      case 'number2':
        butt = 'assets/2.png';
        break;
      case 'number3':
        butt = 'assets/3.png';
        break;
      case 'number4':
        butt = 'assets/4.png';
        break;
      case 'number5':
        butt = 'assets/5.png';
        break;
      case 'number6':
        butt = 'assets/6.png';
        break;
      case 'number7':
        butt = 'assets/7.png';
        break;
      case 'number8':
        butt = 'assets/8.png';
        break;
      case 'number9':
        butt = 'assets/9.png';
        break;

      case 'dotbutton':
        butt = 'assets/dotbutton.png';
        break;
      case 'acbutton':
        butt = 'assets/acbutton.png';
        break;
      case 'cebutton':
        butt = 'assets/cebutton.png';
        break;
      case 'plusbutton':
        butt = 'assets/plusbutton.png';
        break;
      case 'minusbutton':
        butt = 'assets/minusbutton.png';
        break;
      case 'mulbutton':
        butt = 'assets/multbutton.png';
        break;
      case 'divbutton':
        butt = 'assets/divbutton.png';
        break;
      case 'equalbutton':
        butt = 'assets/equalbutton.png';
        break;
      case 'percentbutton':
        butt = 'assets/perbutton.png';
        break;
      case 'rbracket':
        butt = 'assets/rbracket.png';
        break;
      case 'lbracket':
        butt = 'assets/lbracket.png';
        break;
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(300),
      child: Image(
        image: AssetImage(butt),
        width: 100,
        height: 100,
      ),
    );
  }
}
