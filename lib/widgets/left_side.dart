import 'package:flutter/material.dart';
import 'package:web_page/pages/home_screen.dart';
import 'package:web_page/widgets/appbar_left.dart';
class LeftSide extends StatelessWidget {
  const LeftSide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.only(left:58 ,right:58 ,top: 5), 
      width:(MediaQuery.of(context).size.width/3) ,
      height: 600,
      child:DefaultTabController(
        initialIndex: 0,
      length: 4,
      child: Card(
        elevation: 15,
        child: Container(
          decoration:BoxDecoration(color: Color.fromRGBO(231, 131, 131, 0.1) ),
          child: Scaffold(
            appBar:appbar_left, //appbar,
            body:  TabBarView(
              children: <Widget>[
                Center(
                 child: Column(
                  children: [
                    SizedBox(height: 15,),
                    CustomCircleAvatar(radio: 80,),
                    SizedBox(height: 15,),
                    Text("John Doe",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color.fromRGBO(53, 61, 73, 1)),),
                    SizedBox(height: 10,),
                    Text("Entrepreneur - PowerLevel 8",style: TextStyle(fontWeight: FontWeight.w100,color: Color.fromRGBO(53, 61, 73, 1)),),
                    SizedBox(height: 7,),
                    Container(alignment: Alignment.center,margin: EdgeInsets.symmetric(horizontal: 20),width: MediaQuery.of(context).size.width*0.8,height: 2,color: Color.fromRGBO(231, 231, 231, 1)),
                    Row(children: [Container(margin: EdgeInsets.only(left: 100),height:60,width: 60,child: Image(image: AssetImage('assets/images/logo2.png'))),SizedBox(width: 5,),Container(height: 60,width: 160,child: Column(mainAxisAlignment: MainAxisAlignment.start,children: [Container(margin: EdgeInsets.only(top: 10),child: Container(alignment: Alignment.centerLeft,child: Text("Current Balance",style: TextStyle(color:Color.fromRGBO(53, 61, 73, 1) ),))),SizedBox(height: 5,),Container(alignment: Alignment.centerLeft,child: Text("200 SeedCoins",style: TextStyle(fontSize: 20,color:Color.fromRGBO(0, 212, 154, 1) )))],),)],),
                    SizedBox(height: 3,),
                    Container(margin: EdgeInsets.only(left: 40,right: 40),decoration: BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1),borderRadius: BorderRadius.circular(20) ,border:Border.all(width: 1,color: Color.fromRGBO(53, 61, 73, 1))),
                              child: TextButton(onPressed: (){}, child: Text("Add 50 SeedCoins",style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(53, 61, 73, 1)),)),),
                    SizedBox(height: 3,),
                    Container(alignment: Alignment.center,margin: EdgeInsets.symmetric(horizontal: 20),width: MediaQuery.of(context).size.width*0.8,height: 2,color: Color.fromRGBO(231, 231, 231, 1)),  
                    SizedBox(height: 3,),
                    Container(margin: EdgeInsets.only(left: 40,right: 40),
                              alignment: Alignment.centerLeft,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Container(alignment: Alignment.centerLeft,child: Text("Your next PowerLevel")),Container(child: Image(image: AssetImage('assets/images/load1.png'),),),SizedBox(height: 5,),Container(alignment: Alignment.centerLeft,child: Text("Next Reward")),SizedBox(height: 5,),Container(child: Image(image: AssetImage('assets/images/load2.png'),),)],
                              ),
                    ),
                    SizedBox(height: 3,),
                    Container(margin: EdgeInsets.only(left: 40,right: 40),decoration: BoxDecoration(color: Color.fromRGBO(210, 213, 222, 1),borderRadius: BorderRadius.circular(10)),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [FloatingActionButton.small(backgroundColor: Color.fromRGBO(210, 213, 222, 1),elevation: 0,onPressed:(){},child: Icon(Icons.person_outline,color: Colors.black,),),FloatingActionButton.small(backgroundColor: Color.fromRGBO(210, 213, 222, 1),elevation: 0,onPressed:(){},child: Icon(Icons.assignment_turned_in_outlined,color: Colors.black,),),FloatingActionButton.small(backgroundColor: Color.fromRGBO(210, 213, 222, 1),elevation: 0,onPressed:(){},child: Icon(Icons.settings,color: Colors.black,),)],),),
                   
                    ],
                 )
                ),
                Center(
                 child: Text("to do")
                ),
                Center(
                 child: Text("to do")
                ),
                Center(
                 child: Text("to do")
                ),
              
              ],
            ),
          

         
          ),
        ),
      ),
                
      
      
      ),);
    
  }
}
