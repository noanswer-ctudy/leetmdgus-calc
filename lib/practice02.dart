import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('asdf'),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            CupertinoButton.filled(
              child: Text('asdf'),
              onPressed: () {},
            ),
            Icon(
              CupertinoIcons.checkmark,
              color: CupertinoColors.systemRed,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
