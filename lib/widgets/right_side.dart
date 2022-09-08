import 'package:flutter/material.dart';
import 'package:web_page/pages/home_screen.dart';



class RightSide extends StatelessWidget {
  const RightSide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child  : Container(color: Colors.white,width: (2*MediaQuery.of(context).size.width/3-25),height:800 ,child: Column(children: [Container(margin: EdgeInsets.symmetric(vertical: 25),child: Text("Explore your Personal Interests",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromRGBO(0, 212, 154, 1)))),Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [ Categories(AssetImage('assets/categories/growth.png'),"Growth"),Categories(AssetImage('assets/categories/instant.png'),"Instant"),Categories(AssetImage('assets/categories/lifestyle.png'),"Lifestyle"),Categories(AssetImage('assets/categories/inspiracional.png'),"Inspirational"),Categories(AssetImage('assets/categories/experience.png'),"Experience"),Categories(AssetImage('assets/categories/together.png'),"Together"), ],  ),Container(margin: EdgeInsets.only(top: 5 ,bottom: 10),color: Color.fromRGBO(0, 212, 154, 0.8) ,height: 50, child: Stack(fit: StackFit.expand,children: [Container(width: 180,alignment: Alignment.bottomLeft,child: Text("Action Power",style: TextStyle(color: Color.fromRGBO(95, 227, 190, 1),fontSize: 40,fontWeight: FontWeight.w700),)),CustomSearchDrop(), Container(alignment: Alignment.centerRight ,child: Image(image: AssetImage('assets/images/logo.png')))],) ), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Tarjetas(AssetImage('assets/tarjetas/tarjeta1.png'), "Logo Design", Colors.white, Color.fromRGBO(3, 74, 136, 1)),Tarjetas(AssetImage('assets/tarjetas/tarjeta2.png'), "Corporate Identity", Color.fromRGBO(3, 74, 136, 1), Color.fromRGBO(76, 255, 186, 1))],),SizedBox(height: 20,),Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Tarjetas(AssetImage('assets/tarjetas/tarjeta3.png'), "Influencer Guide", Color.fromRGBO(3, 74, 136, 1), Color.fromRGBO(76, 255, 186, 1)),Tarjetas(AssetImage('assets/tarjetas/tarjeta4.png'), "Project Management", Colors.white, Color.fromRGBO(3, 74, 136, 1))],),SizedBox(height: 10,),Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Tarjetas(AssetImage('assets/tarjetas/tarjeta5.png'), "Content Writer", Colors.white, Color.fromRGBO(65, 76, 94, 1)),Tarjetas(AssetImage('assets/tarjetas/tarjeta6.png'), "Experimental Ilustration", Color.fromRGBO(3, 74, 136, 1), Color.fromRGBO(76, 255, 186, 1))],),  ],),),
           );
  }
}