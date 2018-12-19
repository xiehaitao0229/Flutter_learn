import 'package:flutter/material.dart';
import 'bottom_appBar_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return new MaterialApp(
     title: 'xht demo',
     theme: new ThemeData(
       primaryColor: Colors.blue
     ),
     home:BottomAppBarDemo()
   );
  }
}
