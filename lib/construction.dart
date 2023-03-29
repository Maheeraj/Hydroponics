import 'package:flutter/material.dart';
import 'main.dart';

class construction extends StatefulWidget {
  const construction({Key? key}) : super(key: key);

  @override
  State<construction> createState() => _constructionState();
}

class _constructionState extends State<construction> {
  final _textController= TextEditingController();
  final _textController1= TextEditingController();
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
              SizedBox(height: 50,),
              Text('Specifications of the setup',
                textAlign: TextAlign.center,
                style:TextStyle(fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,)
                ,),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(left:15,bottom: 10),
                child: Text('Length of the setup -',
                  textAlign: TextAlign.justify,
                  style:TextStyle(fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.blue,)
                  ,),
              ),
              SizedBox(height: 4,),
              SizedBox(
                width: 350,
                child: TextField(
                  controller: _textController1,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: "Enter Length (in cm)",
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(width:3, color:Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left:15,bottom: 10),
                child: Text('Radius of the setup -',
                  textAlign: TextAlign.justify,
                  style:TextStyle(fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue,)
                  ,),
              ),
              SizedBox(height: 4,),
              SizedBox(
                width: 350,
                child: TextField(
                  controller: _textController,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: "Enter Radius (in cm)",
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(width:3, color:Colors.black),
                    ),
                  ),
                ),
              ),
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
                      double val=double.parse(vari);
                      double wl=2*val*0.75;
                      String wll=wl.toString();
                      showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(30),
                            )
                        ),
                        backgroundColor: Colors.black.withOpacity(0.6),
                        context: context,
                        builder: (context) => buildSheet(wll),
                      );
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
  Widget buildSheet(String wl)=> Container(
child: Center(
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Text("Please maintain a water level of :",
          textAlign: TextAlign.center,
          style:TextStyle(fontSize: 29,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent)
          ,),
      ),
      SizedBox(height: 25,),
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
          child: Text(wl+' cms',
            style:TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),
    ],
  ),
),
  );
}
