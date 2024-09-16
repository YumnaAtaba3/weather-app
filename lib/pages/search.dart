// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_print, must_be_immutable, override_on_non_overriding_member, unused_import, use_build_context_synchronously
import 'package:jjjjjj/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:jjjjjj/model/weatherModel.dart';
import 'package:jjjjjj/provider/providerweather.dart';
import 'package:jjjjjj/service/logic.dart';
import 'package:provider/provider.dart';
class searchpage extends StatelessWidget {
  
    searchpage({ this.updateUI});
VoidCallback? updateUI;
  @override

String? cityname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.orange ,title: Text("search a city"),
        
      ),
      body: Center(
        child:Padding(
        padding:EdgeInsets.symmetric(horizontal: 16),
        child: TextField(
          onChanged: (data){
                cityname =data;
          },
          onSubmitted: (data) async {
              cityname =data;
                weathermethod method =new weathermethod();

            weathermodel weather=await method.getweather(cityname: cityname!);
              Provider.of <weatherprovider>(context,listen: false).weatherdata= weather;
              Provider.of <weatherprovider>(context,listen: false).cityname= cityname;
              updateUI!();
            Navigator.pop(context);
          
          } 
          ,
        decoration: InputDecoration(
          
          label: Text("Input the city"),
          border: OutlineInputBorder(),
            suffixIcon: IconButton(icon: Icon (Icons.search) ,onPressed: (){},),
        
                
                
            contentPadding: EdgeInsets.symmetric(vertical: 30,horizontal: 24),
        ),
        
              
      ))),
    );
  
  }
}  