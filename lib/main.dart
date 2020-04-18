import 'package:flutter/material.dart';
import 'input_page.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';

mixin PortraitModeMixin on StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _portraitModeOnly();
    return null;
  }
}
void _portraitModeOnly() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}
void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFFEB1555),// navigation bar color
    statusBarColor:  Color(0xFFF5F6F8),// status bar color
  ));
  runApp(BMICalculator());
}
class BMICalculator extends StatelessWidget with PortraitModeMixin {
  @override


  Widget build(BuildContext context) {
    super.build(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFF5F6F8),
        scaffoldBackgroundColor: Color(0xFFF5F6F8),
        accentColor: Colors.black,
        fontFamily: 'VarelaRound',
        textTheme: TextTheme(body1: TextStyle(color: Colors.white ),),
      ),
      home: InputPage(),
    );
  }
}

