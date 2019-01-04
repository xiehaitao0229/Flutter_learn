/**
 * ClipPath能够让我们使用clipper切割child
 * 具体介绍请看此文
 * https://iirokrankka.com/2017/09/04/clipping-widgets-with-bezier-curves-in-flutter/
 */
import 'package:flutter/material.dart';
import './custom_clipper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'使用贝塞尔曲线切割',
      theme: ThemeData(
         primarySwatch: Colors.blue,
      ),
      home:HomePage()
    );
  }
}
