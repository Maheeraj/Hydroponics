import 'package:flutter/material.dart';
import 'main.dart';

class newplants extends StatefulWidget {
  const newplants({Key? key}) : super(key: key);

  @override
  State<newplants> createState() => _newplantsState();
}

class _newplantsState extends State<newplants> {
  final _textController= TextEditingController();
  late String vari='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/newplant.png"),
              fit: BoxFit.cover
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 100,),
              Text('What plant would you like to add?',
                textAlign: TextAlign.center,
                style:TextStyle(fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue)
                ,),
              SizedBox(height: 40,),
              SizedBox(
                width: 350,
                child: TextField(
                  controller: _textController,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: "Enter plant's name",
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(width:3, color:Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  width:75,
                  height: 50,
                  child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      //side: BorderSide(width:2, color:Colors.blue),
                      onSurface: Colors.white,
                      primary: Colors.blue.withOpacity(1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))// background
                      ),
                    ),
                    onPressed: (){
                      vari=_textController.text;
                      if(vari=='rice'||vari=='Rice') {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(30),
                            )
                          ),
                          backgroundColor: Colors.black.withOpacity(0.6),
                          context: context,
                          builder: (context) => buildSheetRice(),
                        );
                      }
                      else if(vari=='lettuce'||vari=='Lettuce') {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30),
                              )
                          ),
                          backgroundColor: Colors.black.withOpacity(0.6),
                          context: context,
                          builder: (context) => buildSheetLettuce(),
                        );
                      }
                      else if(vari=='tomato'||vari=='Tomato') {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30),
                              )
                          ),
                          backgroundColor: Colors.black.withOpacity(0.6),
                          context: context,
                          builder: (context) => buildSheetTomato(),
                        );
                      }
                      else if(vari=='saffron'||vari=='Saffron') {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30),
                              )
                          ),
                          backgroundColor: Colors.black.withOpacity(0.6),
                          context: context,
                          builder: (context) => buildSheetSaffron(),
                        );
                      }
                    },
                    child: Text('Go',
                      style:TextStyle(fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
Widget buildSheetRice()=> Container(
  child: Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: Text("Your plant must have:",
            textAlign: TextAlign.center,
            style:TextStyle(fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent)
            ,),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:15,right: 10,bottom: 5),
              child: Text("Temperature",
                textAlign: TextAlign.justify,
                style:TextStyle(fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue)
                ,),
            ),
            SizedBox(
              width:200,
              height: 50,
              child:ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: BorderSide(width:2, color:Colors.blue),
                  onSurface: Colors.white,
                  primary: Colors.white.withOpacity(0.3),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))// background
                  ),
                ),
                onPressed: (){},
                child: Text("30°C - 33°C",
                  style:TextStyle(fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:20,left:70,right: 85,bottom: 20),
              child: Text("pH",
                textAlign: TextAlign.justify,
                style:TextStyle(fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue)
                ,),
            ),
            SizedBox(
              width:200,
              height: 50,
              child:ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: BorderSide(width:2, color:Colors.blue),
                  onSurface: Colors.white,
                  primary: Colors.white.withOpacity(0.3),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))// background
                  ),
                ),
                onPressed: (){},
                child: Text("6-8",
                  style:TextStyle(fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:20,left:60,right: 80,bottom: 20),
              child: Text("TDS",
                textAlign: TextAlign.justify,
                style:TextStyle(fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue)
                ,),
            ),
            SizedBox(
              width:200,
              height: 50,
              child:ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: BorderSide(width:2, color:Colors.blue),
                  onSurface: Colors.white,
                  primary: Colors.white.withOpacity(0.3),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))// background
                  ),
                ),
                onPressed: (){},
                child: Text("880-1100",
                  style:TextStyle(fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        //Divider(height: 2.0,),
      ],
    ),
  ),
);

  Widget buildSheetLettuce()=> Container(
    child: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Text("Your plant must have:",
              textAlign: TextAlign.center,
              style:TextStyle(fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent)
              ,),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:15,right: 10,bottom: 5),
                child: Text("Temperature",
                  textAlign: TextAlign.justify,
                  style:TextStyle(fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)
                  ,),
              ),
              SizedBox(
                width:200,
                height: 50,
                child:ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(width:2, color:Colors.blue),
                    onSurface: Colors.white,
                    primary: Colors.white.withOpacity(0.3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))// background
                    ),
                  ),
                  onPressed: (){},
                  child: Text("20°C - 24°C",
                    style:TextStyle(fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:20,left:70,right: 85,bottom: 20),
                child: Text("pH",
                  textAlign: TextAlign.justify,
                  style:TextStyle(fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)
                  ,),
              ),
              SizedBox(
                width:200,
                height: 50,
                child:ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(width:2, color:Colors.blue),
                    onSurface: Colors.white,
                    primary: Colors.white.withOpacity(0.3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))// background
                    ),
                  ),
                  onPressed: (){},
                  child: Text("6-7",
                    style:TextStyle(fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:20,left:60,right: 80,bottom: 20),
                child: Text("TDS",
                  textAlign: TextAlign.justify,
                  style:TextStyle(fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)
                  ,),
              ),
              SizedBox(
                width:200,
                height: 50,
                child:ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(width:2, color:Colors.blue),
                    onSurface: Colors.white,
                    primary: Colors.white.withOpacity(0.3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))// background
                    ),
                  ),
                  onPressed: (){},
                  child: Text("480-560",
                    style:TextStyle(fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          //Divider(height: 2.0,),
        ],
      ),
    ),
  );

  Widget buildSheetTomato()=> Container(
    child: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Text("Your plant must have:",
              textAlign: TextAlign.center,
              style:TextStyle(fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent)
              ,),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:15,right: 10,bottom: 5),
                child: Text("Temperature",
                  textAlign: TextAlign.justify,
                  style:TextStyle(fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)
                  ,),
              ),
              SizedBox(
                width:200,
                height: 50,
                child:ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(width:2, color:Colors.blue),
                    onSurface: Colors.white,
                    primary: Colors.white.withOpacity(0.3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))// background
                    ),
                  ),
                  onPressed: (){},
                  child: Text("20°C - 24°C",
                    style:TextStyle(fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:20,left:70,right: 85,bottom: 20),
                child: Text("pH",
                  textAlign: TextAlign.justify,
                  style:TextStyle(fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)
                  ,),
              ),
              SizedBox(
                width:200,
                height: 50,
                child:ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(width:2, color:Colors.blue),
                    onSurface: Colors.white,
                    primary: Colors.white.withOpacity(0.3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))// background
                    ),
                  ),
                  onPressed: (){},
                  child: Text("5-7",
                    style:TextStyle(fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:20,left:60,right: 80,bottom: 20),
                child: Text("TDS",
                  textAlign: TextAlign.justify,
                  style:TextStyle(fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)
                  ,),
              ),
              SizedBox(
                width:200,
                height: 50,
                child:ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(width:2, color:Colors.blue),
                    onSurface: Colors.white,
                    primary: Colors.white.withOpacity(0.3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))// background
                    ),
                  ),
                  onPressed: (){},
                  child: Text("1400-3500",
                    style:TextStyle(fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          //Divider(height: 2.0,),
        ],
      ),
    ),
  );

  Widget buildSheetSaffron()=> Container(
    child: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Text("Your plant must have:",
              textAlign: TextAlign.center,
              style:TextStyle(fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent)
              ,),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:15,right: 10,bottom: 5),
                child: Text("Temperature",
                  textAlign: TextAlign.justify,
                  style:TextStyle(fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)
                  ,),
              ),
              SizedBox(
                width:200,
                height: 50,
                child:ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(width:2, color:Colors.blue),
                    onSurface: Colors.white,
                    primary: Colors.white.withOpacity(0.3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))// background
                    ),
                  ),
                  onPressed: (){},
                  child: Text("14°C - 20°C",
                    style:TextStyle(fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:20,left:70,right: 85,bottom: 20),
                child: Text("pH",
                  textAlign: TextAlign.justify,
                  style:TextStyle(fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)
                  ,),
              ),
              SizedBox(
                width:200,
                height: 50,
                child:ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(width:2, color:Colors.blue),
                    onSurface: Colors.white,
                    primary: Colors.white.withOpacity(0.3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))// background
                    ),
                  ),
                  onPressed: (){},
                  child: Text("6-8",
                    style:TextStyle(fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:20,left:60,right: 80,bottom: 20),
                child: Text("TDS",
                  textAlign: TextAlign.justify,
                  style:TextStyle(fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)
                  ,),
              ),
              SizedBox(
                width:200,
                height: 50,
                child:ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(width:2, color:Colors.blue),
                    onSurface: Colors.white,
                    primary: Colors.white.withOpacity(0.3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))// background
                    ),
                  ),
                  onPressed: (){},
                  child: Text("660-720",
                    style:TextStyle(fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          //Divider(height: 2.0,),
        ],
      ),
    ),
  );
}
