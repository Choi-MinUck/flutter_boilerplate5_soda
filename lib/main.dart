import 'package:flutter/material.dart';
import 'package:flutter_boilerplate5_soda/Theme/MyTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: MyTheme(),
      home: const Scaffold(body: MyPages()),
    );
  }
}

class MyPages extends StatelessWidget {
  const MyPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(
      initialPage: 0,
    );
    return PageView(
      controller: controller,
      children: <Widget>[
        Column(
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(top: 240)),
            Image.asset(
              'assets/images/sodaIcon.png',
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Text(
              'Copyright 2022 SODA.  All rights reserved.',
              style: Subtitle2(),
            )
          ],
        ),
        Center(
          child: Image.asset(
            'assets/images/sodaTextWithIcon.png',
          ),
        ),
        Center(
          child: Image.asset('assets/images/sodaText.png'),
        ),
      ],
    );
  }
}
