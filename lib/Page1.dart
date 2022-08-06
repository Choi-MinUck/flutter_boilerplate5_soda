import 'package:flutter/material.dart';
import 'package:flutter_boilerplate5_soda/Theme/MyTheme.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(68, 267, 68, 36),
              child: SizedBox(
                width: 250,
                height: 270,
                child: Image.asset('assets/images/sodaIcon.png'),
              ),
            ),
            Text(
              'Copyright 2022 SODA. All rights reserved.',
              style: Subtitle2(),
            ),
          ],
        ),
      ),
    );
  }
}
