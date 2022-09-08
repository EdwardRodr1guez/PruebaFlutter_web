import 'package:flutter/material.dart';
import 'package:web_page/pages/home_screen.dart';


final appbar_right= AppBar(
        title              : Container(width: 200,child: Row(children: [Container(alignment: Alignment.center,margin: EdgeInsets.symmetric(horizontal: 20),width: 1,height: 40,color: Color.fromRGBO(231, 231, 231, 1)), Container(child: Text("wake up"    ,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Color.fromRGBO(17, 68, 111, 1) ),)),Container(child: Text(" your dreams.",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Color.fromRGBO(0, 212, 154, 1)),))],)) ,
        backgroundColor    : Colors.white,
        elevation          : 20,
        leading            : Transform.scale(scale: 2,child: Image(image: AssetImage('assets/images/leadimage.png'))),
        flexibleSpace      : Row(children:[DummyContainer(),Country(),CustomTextfield(borderradius: BorderRadius.circular(14),borderconfig: BoxDecoration(color: Color.fromRGBO(243, 243, 243,1), borderRadius: BorderRadius.circular(14))),CustomButton(Image(image: AssetImage('assets/images/btn1.png'))),CustomButton(Image(image: AssetImage('assets/images/btn2.png'))),CustomButton(Image(image: AssetImage('assets/images/btn3.png'))),Profile()],
      ));
           
