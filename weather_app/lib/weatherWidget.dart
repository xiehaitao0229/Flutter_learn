import 'dart:convert';  //  json转换
import 'package:flutter/material.dart';
import 'weatherData.dart';
import 'package:http/http.dart' as http;


class WeatherWidget extends StatefulWidget {
  @override
  _WeatherWidgetState createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {
  WeatherData weather = WeatherData.empty();

  _WeatherWidgetState(){
    _getWeather();  //  构造函数
  }

 void _getWeather() async{
    WeatherData data = await _fetchWeather();
    setState((){
      weather = data;
    });
  }

  Future<WeatherData> _fetchWeather() async{
    final response = await http.get('https://free-api.heweather.com/s6/weather/now?location=湛江&key=ebb698e9bb6844199e6fd23cbb9a77c5');
    if(response.statusCode==200){
      return WeatherData.fromJson(json.decode(response.body));
    }else{
      return WeatherData.empty();
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image.asset("images/weather_bg.jpg",fit: BoxFit.fitHeight,),
          new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 40.0),
                child: new Text(
                  "湛江市",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
              new Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 100.0),
                child: new Column(
                  children: <Widget>[
                    new Text(
                        weather?.tmp,
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 80.0
                        )),
                    new Text(
                        weather?.cond,
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 45.0
                        )),
                    new Text(
                      weather?.hum,
                      style: new TextStyle(
                          color: Colors.white,
                          fontSize: 30.0
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}