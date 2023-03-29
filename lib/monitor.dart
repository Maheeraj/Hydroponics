import 'package:flutter/material.dart';
import 'firebase_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:firebase_auth/firebase_auth.dart';

class monitor extends StatefulWidget {
  const monitor({Key? key}) : super(key: key);

  @override
  State<monitor> createState() => _monitorState();
}

class _monitorState extends State<monitor> {
  final auth =FirebaseAuth.instance;
  final ref= FirebaseDatabase.instance.ref('test');
  final ref1= FirebaseDatabase.instance.ref('test1');
  final ref2= FirebaseDatabase.instance.ref('test2');
  final ref3= FirebaseDatabase.instance.ref('test3');
  final ref4= FirebaseDatabase.instance.ref('test4');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/monitor1.png"),
    fit: BoxFit.cover
    ),
    ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /*Text('Temperature',
                textAlign: TextAlign.left,
                style:TextStyle(fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue)
                ,),*/
              SizedBox(height: 200,),
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 130),
                child: Expanded(
                  child: FirebaseAnimatedList
                    (query: ref,
                      itemBuilder: (context,snapshot,animation,index){
                        String val=snapshot.child('Temp').value.toString();
                        //String val1=snapshot.child('Water level').value.toString();
                        //String val2=snapshot.child('pH').value.toString();
                        //String val3=snapshot.child('LDR').value.toString();
                        //String val4=snapshot.child('TDS').value.toString();

                        double vall=double.parse(val);
                        //double val11=double.parse(val1);
                        //double val22=double.parse(val2);
                        //double val33=double.parse(val3);
                        //double val44=double.parse(val4);
                        //final val1=ModalRoute.of(context)?.settings.arguments as int;
                        //String name;
                        //name={"LDR","TDS","Temperature","Water Level","pH"} as String;
                        print("Temperature  is :");
                        print(vall);
                        return  Center(
                          child: Column(
                            children: [
                              SizedBox(height: 75,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:15,right: 10),
                                    child: Text("Temperature",
                                      textAlign: TextAlign.justify,
                                      style:TextStyle(fontSize: 27,
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
                                        primary: Colors.white.withOpacity(0.1),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(15))// background
                                      ),
                                      ),
                                      onPressed: (){},
                                      child: Text(val,
                                        style:TextStyle(fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }
                  ),
                ),
              ),
              SizedBox(height: 50,),
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 90),
                child: Expanded(
                  child: FirebaseAnimatedList
                    (query: ref3,
                      itemBuilder: (context,snapshot,animation,index){
                        //String val=snapshot.child('Temp').value.toString();
                        //String val1=snapshot.child('Water level').value.toString();
                        //String val2=snapshot.child('pH').value.toString();
                        //String val3=snapshot.child('LDR').value.toString();
                        String val4=snapshot.child('TDS').value.toString();

                        //double vall=double.parse(val);
                        //double val11=double.parse(val1);
                        //double val22=double.parse(val2);
                        //double val33=double.parse(val3);
                        double val44=double.parse(val4);
                        //final val1=ModalRoute.of(context)?.settings.arguments as int;
                        //String name;
                        //name={"LDR","TDS","Temperature","Water Level","pH"} as String;
                        print("TDS  is :");
                        print(val44);
                        return  Center(
                          child: Column(
                            children: [
                              //SizedBox(height: 15,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:60,right: 80,bottom: 5),
                                    child: Text("TDS",
                                      textAlign: TextAlign.justify,
                                      style:TextStyle(fontSize: 27,
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
                                        primary: Colors.white.withOpacity(0.1),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(15))// background
                                        ),
                                      ),
                                      onPressed: (){},
                                      child: Text(val4,
                                        style:TextStyle(fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 90),
                child: Expanded(
                  child: FirebaseAnimatedList
                    (query: ref2,
                      itemBuilder: (context,snapshot,animation,index){
                        //String val=snapshot.child('Temp').value.toString();
                        String val1=snapshot.child('Water level').value.toString();
                        //String val2=snapshot.child('pH').value.toString();
                        //String val3=snapshot.child('LDR').value.toString();
                        //String val4=snapshot.child('TDS').value.toString();

                        //double vall=double.parse(val);
                        double val11=double.parse(val1);
                        //double val22=double.parse(val2);
                        //double val33=double.parse(val3);
                        //double val44=double.parse(val4);
                        //final val1=ModalRoute.of(context)?.settings.arguments as int;
                        //String name;
                        //name={"LDR","TDS","Temperature","Water Level","pH"} as String;
                        print("water level  is :");
                        print(val11);
                        return  Center(
                          child: Column(
                            children: [
                              //SizedBox(height: 15,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:15,right:30,bottom: 5),
                                    child: Text("Water level",
                                      textAlign: TextAlign.justify,
                                      style:TextStyle(fontSize: 27,
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
                                        primary: Colors.white.withOpacity(0.1),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(15))// background
                                        ),
                                      ),
                                      onPressed: (){},
                                      child: Text(val1,
                                        style:TextStyle(fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 90),
                child: Expanded(
                  child: FirebaseAnimatedList
                    (query: ref4,
                      itemBuilder: (context,snapshot,animation,index){
                        //String val=snapshot.child('Temp').value.toString();
                        //String val1=snapshot.child('Water level').value.toString();
                        //String val2=snapshot.child('pH').value.toString();
                        String val3=snapshot.child('LDR').value.toString();
                        //String val4=snapshot.child('TDS').value.toString();

                        //double vall=double.parse(val);
                        //double val11=double.parse(val1);
                        //double val22=double.parse(val2);
                        double val33=double.parse(val3);
                        //double val44=double.parse(val4);
                        //final val1=ModalRoute.of(context)?.settings.arguments as int;
                        //String name;
                        //name={"LDR","TDS","Temperature","Water Level","pH"} as String;
                        print("Light Intensity  is :");
                        print(val33);
                        return  Center(
                          child: Column(
                            children: [
                              //SizedBox(height: 15,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:10,right:10,bottom: 5),
                                    child: Text("Light Intensity",
                                      textAlign: TextAlign.justify,
                                      style:TextStyle(fontSize: 25,
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
                                        primary: Colors.white.withOpacity(0.1),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(15))// background
                                        ),
                                      ),
                                      onPressed: (){},
                                      child: Text(val3,
                                        style:TextStyle(fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 90),
                child: Expanded(
                  child: FirebaseAnimatedList
                    (query: ref1,
                      itemBuilder: (context,snapshot,animation,index){
                        //String val=snapshot.child('Temp').value.toString();
                        //String val1=snapshot.child('Water level').value.toString();
                        String val2=snapshot.child('pH').value.toString();
                        //String val3=snapshot.child('LDR').value.toString();
                        //String val4=snapshot.child('TDS').value.toString();

                        //double vall=double.parse(val);
                        //double val11=double.parse(val1);
                        double val22=double.parse(val2);
                        //double val33=double.parse(val3);
                        //double val44=double.parse(val4);
                        //final val1=ModalRoute.of(context)?.settings.arguments as int;
                        //String name;
                        //name={"LDR","TDS","Temperature","Water Level","pH"} as String;
                        print("pH  is :");
                        print(val22);
                        return  Center(
                          child: Column(
                            children: [
                              //SizedBox(height: 15,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:70,right:85,bottom: 5),
                                    child: Text("pH",
                                      textAlign: TextAlign.justify,
                                      style:TextStyle(fontSize: 27,
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
                                        primary: Colors.white.withOpacity(0.1),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(15))// background
                                        ),
                                      ),
                                      onPressed: (){},
                                      child: Text(val2,
                                        style:TextStyle(fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }
                  ),
                ),
              ),
        ],
      ),

        )
    );
  }
}
