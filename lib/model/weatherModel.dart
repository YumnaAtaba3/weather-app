// ignore_for_file: camel_case_types, file_names, prefer_typing_uninitialized_variables, empty_constructor_bodies, duplicate_ignore, unused_element, dead_code

// ignore: empty_constructor_bodies
import 'package:flutter/material.dart';

class weathermodel{
  String date;
double temp;
double maxtemp;
double mintemp;
  String weatherstate;
weathermodel({required this.date,required this.temp,required this.maxtemp,required this.mintemp,required this.weatherstate });
  // ignore: dead_code
  factory   weathermodel.fromjson(dynamic data){
  var jsondata =data['forecast']['forecastday'][0]['day'];

    return weathermodel(date: data['location']['localtime'],
      
      temp: jsondata['avgtemp_c'], 
      maxtemp: jsondata['maxtemp_c'],
      mintemp:jsondata['mintemp_c'], 
      weatherstate: jsondata['condition']['text']);
    
      }
        @override
      String toString(){
        return 'tem=$temp   min = $mintemp';
}
String getimage(){
  if(weatherstate=='Thunderstrom'||weatherstate=='Patchy rain possible'){
  return 'photo/cloudy.png';}
  else  if(weatherstate=='Heavy Cloud'||weatherstate=='Sleet'||weatherstate=='Snow'||weatherstate=='Hail'||weatherstate=='Overcast'){
  return 'photo/cloudy.png';}
    else  if(weatherstate=='Showers'||weatherstate=='Light Rain'||weatherstate=='Heavy Rain'||weatherstate=='Moderate rain'){
  return 'photo/rainy.png';}
    else  if(weatherstate=='Clear'||weatherstate=='Sunny'||weatherstate=='light cloud'){
  return 'photo/clear.png';}
  else{
    return 'photo/clear.png';
  }
}
MaterialColor getThemecolor(){
  if(weatherstate=='Thunderstrom'||weatherstate=='Patchy rain possible'){
  return  Colors.blueGrey;}
  else  if(weatherstate=='Heavy Cloud'||weatherstate=='Sleet'||weatherstate=='Snow'||weatherstate=='Hail'||weatherstate=='Overcast'){
  return Colors.blue; }
    else  if(weatherstate=='Showers'||weatherstate=='Light Rain'||weatherstate=='Heavy Rain'||weatherstate=='Moderate rain'){
  return Colors.blueGrey;}
    else  if(weatherstate=='Clear'||weatherstate=='Sunny'||weatherstate=='light cloud'){
  return Colors.orange;}
  else{
    return Colors.orange;
  }
}
}