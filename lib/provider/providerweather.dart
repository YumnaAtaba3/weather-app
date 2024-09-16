// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, unused_import, unused_field
import 'package:flutter/material.dart';
import 'package:jjjjjj/model/weatherModel.dart';
import 'package:provider/provider.dart';
class weatherprovider extends ChangeNotifier{
  weathermodel? _weatherdata;
  String? cityname;
  set weatherdata (weathermodel? weather){
    _weatherdata=weather;
    notifyListeners();
  }
  weathermodel? get weatherdata => _weatherdata;
}