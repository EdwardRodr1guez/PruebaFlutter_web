import 'package:flutter/material.dart';
import 'package:web_page/widgets/appbar_left.dart';
import 'package:web_page/widgets/appbar_right.dart';
import 'package:web_page/widgets/left_side.dart';
import 'package:web_page/widgets/right_side.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar_right,
      
      body  :   Row(children: [
                const                              LeftSide (),
                const SingleChildScrollView(child: RightSide()),  
                             ],));
    
  }
}







class CustomTextfield extends StatelessWidget {
   CustomTextfield({this.label="Search...", required this.borderconfig,required this.borderradius});

  String? label;
  Decoration borderconfig;
  BorderRadius borderradius;
  @override
  Widget build(BuildContext context) {
    
    return  Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Container(
                  //padding: EdgeInsets.symmetric(vertical: 10),
                  width: 300,
                  decoration: borderconfig,
                  child: TextFormField(
                    
                    autofocus: false,
                    initialValue: "",
                    onChanged: (value){
                      print("$value");
                      
                    },
                    style: TextStyle(color: Color.fromRGBO(101,101,107 , 1) ),
                    validator: (value){
                      if (value==null) return "Este campo es requerido";
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      hintText: label,
                      hintStyle: TextStyle(color: Color.fromRGBO(101,101,107 , 1), fontSize: 11),
                      suffixIcon: Icon(Icons.search, color: Color.fromRGBO(101,101,107 , 1) ),
                      border: OutlineInputBorder(
                        borderRadius: borderradius,
                        
                      )
                    ),
                  ),
                ),
    );

}
}

class CustomButton extends StatelessWidget {
   CustomButton(this.imagen);
  Image imagen;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){},
      child: imagen,
      elevation: 0,
      backgroundColor:  Colors.white,);
  }
}

class DummyContainer extends StatelessWidget {
  const DummyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(margin:EdgeInsets.only(left: 350), width: 520,color: Colors.white);
  }
}

class Country extends StatelessWidget {
  const Country({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
                Image(image: AssetImage('assets/images/country.png')),
                Text("ES"),
                SizedBox(width: 15)
                ]);
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
               CustomCircleAvatar(),
               SizedBox(width: 10),
              _CustomDropButton()
      ],);
  }
}

class CustomCircleAvatar extends StatelessWidget {
   CustomCircleAvatar({this.radio=20});

  double? radio;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Color.fromRGBO(210, 213, 222, 1) ,
      backgroundImage: AssetImage('assets/profiles/profile1.png'),
      radius: radio,
    );
  }
}

class _CustomDropButton extends StatelessWidget {
  _CustomDropButton({ this.name="John Doe", this.color=Colors.white});

  String? name;
  Color? color;

  //String dropdownValue = name;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: name,
      icon: const Icon(Icons.arrow_drop_down_outlined),
      elevation: 16,
      style: const TextStyle(color: Colors.grey),
      underline: Container(
        height: 2,
        color: color,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        //setState(() {
        //  dropdownValue = value!;
        //});
      },
      items: [name!, "to do x2"].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class Categories extends StatelessWidget {
  Categories(this.imagen, this.label);
  AssetImage imagen;
  String label;

  @override
  Widget build(BuildContext context) {
    return Container(width: 110+50, height:60 ,color: Color.fromRGBO(246, 245, 245, 1) ,child: Row(children: [SizedBox(width: 10,),CircleAvatar( backgroundImage: imagen, ),SizedBox(width: 10,), Text(label,style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(102, 105, 112, 1)),), Container(width: 10,height: 60,alignment:Alignment.bottomRight ,child: IconButton(onPressed: (){print("oprimido");}, icon: Icon(Icons.chevron_right_outlined,color:  Color.fromRGBO(0, 212, 154, 1),)))],),);
  }
}

class _Dummy2 extends StatelessWidget {
   _Dummy2(this.imagen);
  AssetImage imagen;

  @override
  Widget build(BuildContext context) {
    //return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [_Tarjetas(imagen, "Logo Design", Colors.white, Color.fromRGBO(3, 74, 136, 1)),_Tarjetas(AssetImage('assets/tarjetas/tarjeta1.png'), "Logo Design", Colors.white, Color.fromRGBO(3, 74, 136, 1))],);
     return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Tarjetas(imagen, "Logo Design", Colors.white, Color.fromRGBO(3, 74, 136, 1)),Tarjetas(AssetImage('assets/tarjetas/tarjeta1.png'), "Logo Design", Colors.white, Color.fromRGBO(3, 74, 136, 1))],);
  
  }
}

class CustomSearchDrop extends StatelessWidget {
  const CustomSearchDrop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/5),
      child: Row(children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Container(decoration: BoxDecoration(color: Color.fromRGBO(230, 228, 229, 1),borderRadius: BorderRadius.only(topLeft:Radius.circular(8) ,bottomLeft:Radius.circular(8) )),child: _CustomDropButton(color: Color.fromRGBO(230, 228, 229, 1),name: "See All",)),
        ),
        CustomTextfield(borderradius: BorderRadius.only(topRight:Radius.circular(14) ,bottomRight: Radius.circular(14)),label: "Find My ActionPowers",borderconfig:BoxDecoration(color: Color.fromRGBO(243, 243, 243,1), borderRadius: BorderRadius.only(topRight: Radius.circular(14),bottomRight: Radius.circular(14)) ))
      ],),
    );
  }
}

class Tarjetas extends StatelessWidget {
   Tarjetas(this.imagen, this.mensaje, this.color, this.backcolor);

   AssetImage imagen;
   String mensaje;
   Color color;
   Color backcolor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 177,
          width: 240,
          child: Image(image: imagen)),
        Container(
          height: 177,
          width: 240,
          color: backcolor,
          child: Column(
            children: [
              Container(alignment: Alignment.topLeft,margin: EdgeInsets.only(left: 20, top: 20),child: Text(mensaje,style: TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.bold ),)),
              SizedBox(height: 80,),
              Row(mainAxisAlignment: MainAxisAlignment.start,children: [Container(margin: EdgeInsets.only(left: 20),),FloatingActionButton.small(backgroundColor: color,child: Icon(Icons.play_arrow, color: backcolor,),onPressed: (){}),SizedBox(width: 15,),FloatingActionButton.small(backgroundColor: color,child: Icon(Icons.comment_bank_outlined,color: backcolor,),onPressed: (){}),SizedBox(width: 15,),FloatingActionButton.small(backgroundColor: color,child: Icon(Icons.card_giftcard_outlined,color: backcolor,),onPressed: (){})],)
            
            ],
          ),
        )
      ],
    );
  }
}