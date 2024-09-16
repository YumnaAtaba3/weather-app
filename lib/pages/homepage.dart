// ignore_for_file: unused_import, camel_case_types, prefer_const_constructors, avoid_unnecessary_containers, dead_code, prefer_const_literals_to_create_immutables, unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:jjjjjj/model/weatherModel.dart';

import 'package:jjjjjj/pages/search.dart';
import 'package:jjjjjj/provider/providerweather.dart';
import 'package:provider/provider.dart';
class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => homepageState();
  
}

class homepageState extends State<homepage> {
  weathermodel? weatherdata;
  void updateUI(){
    setState(() {
      
    });
  }
  
  @override
  Widget build(BuildContext context) {
    weatherdata=Provider.of <weatherprovider>(context,listen: true).weatherdata;
    return Scaffold(
      appBar: AppBar(title: Text("weather app"),
        actions: [
        IconButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> searchpage(updateUI:updateUI)));
        },
        icon: Icon(Icons.search),)
      ],
      ),
      body: weatherdata==null? Center(child: Text("there is no weather ...... start searching now",style: TextStyle(fontSize: 20),),)
        : Container(decoration:BoxDecoration( 
        gradient: LinearGradient(colors:[weatherdata!.getThemecolor(),
        weatherdata!.getThemecolor()[300]!,
        weatherdata!.getThemecolor()[100]!,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter)),
              
          child: 
        
          Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            
              Text(Provider.of <weatherprovider>(context).cityname!,style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                Text("22/10 23:12",style: TextStyle(fontSize: 10),),
            
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Image.asset(weatherdata!.getimage()),
                Text("${weatherdata!.temp.toInt()}",style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
                Column(children: [
                  Text("mintemp=${weatherdata!.mintemp.toInt()}"),
                    Text("maxtemp=${weatherdata!.maxtemp.toInt()}"),
                ], )
              ],),
                Text(weatherdata!.weatherstate
                ,style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
        ]),) 
      
      
        );
      
  }
}