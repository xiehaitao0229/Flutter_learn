class WeatherData{
  String cond; //  天气
  String tmp; //  温度
  String hum; //  湿度

  //  构造函数
  WeatherData({this.cond,this.tmp,this.hum});

  //  工厂模式
  factory WeatherData.fromJson(Map<String,dynamic>json){
    return WeatherData(
      cond:json['HeWeather6'][0]['now']['cond_txt'],
      tmp: json['HeWeather6'][0]['now']['tmp']+"°",
      hum: "湿度  "+json['HeWeather6'][0]['now']['hum']+"%",
    );
  }

  factory WeatherData.empty(){
    return WeatherData(
      cond: "",
      tmp: "",
      hum: "",
    );
  }
}