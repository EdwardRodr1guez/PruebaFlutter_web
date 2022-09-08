import 'package:flutter/material.dart';


final appbar_left= AppBar(
            backgroundColor: Color.fromRGBO(210, 213, 222, 1),
            automaticallyImplyLeading: false,
            centerTitle: true,
            foregroundColor: Color.fromRGBO(0, 212, 154, 1) ,
            title: TabBar(isScrollable: false,tabs: 
            [Tab(icon:Icon(Icons.business_center         ,size: 25,color: Colors.black, ),child:Text( "ActionPower",style: TextStyle(fontSize: 10,color: Color.fromRGBO(53, 61, 73, 1)),)),
             Tab(icon:Icon(Icons.terrain_outlined        ,size: 25,color: Colors.black, ),child:Text( "Seedcoins",style: TextStyle(fontSize: 10,color: Color.fromRGBO(53, 61, 73, 1)),)), //Seedcoins
             Tab(icon:Icon(Icons.assignment_ind          ,size: 25,color: Colors.black, ),child:Text( "WeSocial",style: TextStyle(fontSize: 10,color: Color.fromRGBO(53, 61, 73, 1)),)),  //  WeSocial
             Tab(icon:Icon(Icons.monitor_heart_outlined  ,size: 25,color: Colors.black, ),child:Text( "Wechat",style: TextStyle(fontSize: 10,color: Color.fromRGBO(53, 61, 73, 1)),)),  // WeChat
            ] 
            
            ) ); 


           
