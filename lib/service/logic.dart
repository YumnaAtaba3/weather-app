// ignore_for_file: unused_import, camel_case_types, unused_local_variable, non_constant_identifier_names, prefer_typing_uninitialized_variables
import 'package:jjjjjj/pages/homepage.dart';
import 'package:jjjjjj/pages/search.dart';
import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:jjjjjj/model/weatherModel.dart';
class weathermethod{
Future<weathermodel> getweather({required String cityname} )async{
          String Baseurl="http://api.weatherapi.com/v1";
          String Apikey="5fe3c2738d0043bf8a7154905230311";
        Uri url =Uri.parse('$Baseurl/forecast.json?key=$Apikey&q=$cityname');
            http.Response response=await http.get(url);
            Map<String,dynamic> data =jsonDecode(response.body);
      weathermodel weather=weathermodel.fromjson(data);
        
      
        return weather ;
      }
}