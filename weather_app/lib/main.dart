import 'package:flutter/material.dart';
import 'weatherWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '谢海涛天气APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WeatherWidget(),
    );
  }
}
