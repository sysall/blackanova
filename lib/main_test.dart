import 'package:flutter/material.dart';
import 'package:blackanova/screens/availibility_schedule_page.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr, // Replace with your desired text direction
      child: MaterialApp(
        home: Scaffold(
          body: SafeArea(
              child: AvailibilityPage(),
          top: false,
          bottom: false,),
        ),
      ),
    );
  }
}