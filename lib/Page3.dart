import 'package:flutter/material.dart';
import 'package:flutter_boilerplate5_soda/Theme/MyTheme.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 183,
              height: 86,
              child: Image.asset('assets/images/sodaText.png'),
            ),
          ],
        ),
      ),
    );
  }
}
