import 'package:flutter/material.dart';
import 'package:flutter_boilerplate5_soda/Theme/MyTheme.dart';
import 'package:flutter_boilerplate5_soda/Page1.dart';
import 'package:flutter_boilerplate5_soda/Page2.dart';
import 'package:flutter_boilerplate5_soda/Page3.dart';

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
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

final List<Widget> pageList = <Widget>[
  Page1(),
  Page2(),
  Page3(),
];

class _MyHomeState extends State<MyHome> {
  var currentPage = 0;

  void pageChange(int page) {
    currentPage = page;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(
      initialPage: 0,
    );
    return Container(
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          PageView.builder(
              physics: ClampingScrollPhysics(),
              itemCount: 3,
              onPageChanged: (int page) {
                pageChange(page);
              },
              controller: controller,
              itemBuilder: (context, index) {
                return pageList[index];
              }),
          Padding(
            padding: EdgeInsets.only(bottom: 26),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  for (int i = 0; i < pageList.length; i++)
                    if (i == currentPage) ...[circlePageBar(true)] else
                      circlePageBar(false),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget circlePageBar(bool isActive) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 250),
    margin: EdgeInsets.symmetric(horizontal: 4),
    height: isActive ? 6 : 6,
    width: isActive ? 6 : 6,
    decoration: BoxDecoration(
        color: isActive ? Color(0xff182949) : Color(0xffd8d8d8),
        borderRadius: BorderRadius.all(Radius.circular(12))),
  );
}
