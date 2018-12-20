import 'package:flutter/material.dart';
import 'pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'xht 自定义路由动画',
      theme: new ThemeData(
        primaryColor: Colors.blue,
      ),
      home:new FirstPage()
    );
  }
}
