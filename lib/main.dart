// ignore_for_file: camel_case_types, prefer_const_constructors, unused_import, duplicate_ignore

import 'package:flutter/material.dart' show BuildContext, Colors, FormState, GlobalKey, MaterialApp, State, StatefulWidget, ThemeData, Widget, runApp;
import 'package:jjjjjj/model/weatherModel.dart';
import 'package:jjjjjj/provider/providerweather.dart';
// ignore: unused_import
import 'package:provider/provider.dart';

// ignore: unused_import
import 'package:http/http.dart';
import 'package:jjjjjj/pages/homepage.dart';
void main() {
  runApp( ChangeNotifierProvider(
      create: (context){
        return weatherprovider() ;
      },child: MyApp(), ));
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() {
    return myappstate();
  }
}
class myappstate extends State<MyApp>{

  GlobalKey <FormState> formstate =GlobalKey();
  
  @override
  Widget build ( BuildContext context){
    return MaterialApp(  
        theme:ThemeData(primarySwatch: Provider.of<weatherprovider>(context).weatherdata==null ? Colors.blue:Provider.of<weatherprovider>(context).weatherdata!.getThemecolor())
        ,
          home: homepage(),
    



    ) ;
  
  }
}
