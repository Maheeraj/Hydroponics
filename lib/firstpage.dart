import 'package:flutter/material.dart';
import 'package:hydroponics/construction.dart';
import 'package:hydroponics/monitor.dart';
import 'newplants.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'reusable_widgets.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/options.png"),
              fit: BoxFit.cover
          ),
        ),
        child:Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TweenAnimationBuilder(
                    child:Center(
                      child: Text('Would you like to monitor your plants?',
                        textAlign: TextAlign.center,
                        style:TextStyle(fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue)
                        ,),
                    ),
                    tween: Tween<double>(begin: 0,end: 1,),
                    duration: Duration(milliseconds: 500),
                    builder :(BuildContext context,double _op,Widget? child){
                      textToSpeech('Would you like to monitor your plants?  '
                          '  If yes, then click Monitor              '
                          '    Orrrr      Do you want to add any new plants?       '
                          '     If yes, then click New plant+'
                          '    Orrrr      Do you want to add additional Hydroponic setup?       '
                          '     If yes, then click Set Up'
                          ''
                          ''
                          ''
                          ''
                          ''
                          ''
                          ''
                          '+'

                      );
                      //textToSpeech('If yes, then click Monitor');
                      return Opacity(
                        opacity: _op,
                        child: Padding(
                          padding: EdgeInsets.only(bottom:15),
                          child:child,
                        ),
                      );
                    }
                ),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: TweenAnimationBuilder(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            side: BorderSide(width:2, color:Colors.blue),
                            primary: Colors.black.withOpacity(0.1), // background
                            onPrimary: Colors.black, // foreground
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            )
                        ),
                        onPressed: () {
                          print('clicked');
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => monitor()));
                        },
                        child: Text('Monitor',
                          style:TextStyle(fontSize: 20,
                            fontWeight: FontWeight.bold,)
                          ,),
                      ),
                      tween: Tween<double>(begin: 0,end: 1,),
                      duration: Duration(seconds: 2),
                      builder :(BuildContext context,double _op,Widget? child){
                        return Opacity(
                          opacity: _op,
                          child: child,
                        );
                      }
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:10.0),
                  child: Text('Do you want to add any new plants?',
                    textAlign: TextAlign.center,
                    style:TextStyle(fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)
                    ,),
                ),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: TweenAnimationBuilder(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            side: BorderSide(width:2, color:Colors.blue),
                            primary: Colors.black.withOpacity(0.1), // background
                            onPrimary: Colors.black, // foreground
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            )
                        ),
                        onPressed: () {
                          print('clicked out');
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> newplants()));
                        },
                        child: Text('New Plant+',
                          style:TextStyle(fontSize: 20,
                            fontWeight: FontWeight.bold,)
                          ,),
                      ),
                      tween: Tween<double>(begin: 0,end: 1,),
                      duration: Duration(seconds: 2),
                      builder :(BuildContext context,double _op,Widget? child){
                       // textToSpeech('Do you want to add any new plants?');
                       // textToSpeech('If yes, then click Add plant');
                        return Opacity(
                          opacity: _op,
                          child: child,
                        );
                      }
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text('Add an additional Hydroponic Setup',
                    textAlign: TextAlign.center,
                    style:TextStyle(fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)
                    ,),
                ),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: TweenAnimationBuilder(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            side: BorderSide(width:2, color:Colors.blue),
                            primary: Colors.black.withOpacity(0.2), // background
                            onPrimary: Colors.black, // foreground
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            )
                        ),
                        onPressed: () {
                          print('clicked out');
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> construction()));
                        },
                        child: Text('Set Up+',
                          style:TextStyle(fontSize: 20,
                            fontWeight: FontWeight.bold,)
                          ,),
                      ),
                      tween: Tween<double>(begin: 0,end: 1,),
                      duration: Duration(seconds: 2),
                      builder :(BuildContext context,double _op,Widget? child){
                      //  textToSpeech('Add an additional Hydroponic Setup');
                      //  textToSpeech('If yes, then click Add setup');
                        return Opacity(
                          opacity: _op,
                          child: child,
                        );
                      }
                  ),
                ),
              ],
            )
        ) ,
      ),
    );
  }
}
