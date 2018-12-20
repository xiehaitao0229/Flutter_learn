import 'package:flutter/material.dart';
import 'custome_router.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: new Text('第一页', style: TextStyle(fontSize: 36.0)),
        elevation: 0.0,
      ),
      body: Center(
        child: MaterialButton(
            child: Icon(Icons.navigate_next, color: Colors.white, size: 64.0),
            onPressed: () {
              //  自定义跳转路由动画
              Navigator.of(context).push(CustomRoute(SecondPage()));
            }),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
          title: Text(' 第二页', style: TextStyle(fontSize: 36.0)),
          backgroundColor: Colors.yellowAccent,
          leading: Container(),
          elevation: 0.0),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: ()=>Navigator.of(context).pop(),
        ),
      ),
    );
  }
}
