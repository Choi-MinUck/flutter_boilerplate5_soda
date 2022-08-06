import 'package:flutter/material.dart';
import 'package:flutter_boilerplate5_soda/Theme/MyTheme.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: SizedBox(
          width: 276,
          height: 86,
          child: Image.asset('assets/images/sodaTextWithIcon.png'),
        ),
      ),
    );
  }
}
