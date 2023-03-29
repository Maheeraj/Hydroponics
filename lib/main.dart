import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hydroponics/firebase_services.dart';
import 'package:hydroponics/firstpage.dart';
import 'package:hydroponics/reusable_widgets.dart';
import 'package:hydroponics/signup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MaterialApp(home:MyApp()));
}

class MyApp extends StatelessWidget {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/hydroback.png"),
              fit: BoxFit.cover
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.only(right:250,bottom: 2),
                child: Text("EMAIL",
                  style:TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w300,)
                  ,),
              ),
              SizedBox(
                width: 350,
                  child: reusableTextField("Enter Username", Icons.person_outline,false, _emailTextController)),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right:220,bottom: 2),
                child: Text("PASSWORD",
                  style:TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w300,)
                  ,),
              ),
              SizedBox(
                width: 350,
                  child: reusableTextField("Enter Password", Icons.lock_outline,true, _passwordTextController)),
              SizedBox(height: 30,),
              SizedBox(
                width: 350,
                  child: signInSignUpButton(context, true, (){
                    FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailTextController.text,
                        password: _passwordTextController.text)
                        .then((value) {
                          print("Logged in");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => firstpage()));
                    }).onError((error, stackTrace) {
                      print("error ${error.toString()}");
                    });
                  })),
              const Text("Don't have an account? ",
                  style: TextStyle(color: Colors.black)),
              GestureDetector(
                onTap:() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signup()));
                },
                child: const Text("Sign Up",
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 75,),
              Text("------------------ or continue with -------------------",
                style:TextStyle(fontSize: 16,
                fontWeight: FontWeight.w300,)
                ,),
              SizedBox(height: 15,),
              SizedBox(
                height:90,
             width: 100,
             child:ElevatedButton(
              style:ElevatedButton.styleFrom(
                  primary: Colors.white.withOpacity(0.7), // background
                 // onPrimary: Colors.blue, // foreground
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))
                  )
              ),
              onPressed: () async {
                await FirebaseServices().signInWithGoogle();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => firstpage()));
              },

              /*style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black26;
                    }
                    return Colors.white;
                  })),*/
              child: Padding(
                padding: const EdgeInsets.only(left:9.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/google.png",
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    /*const Text(
                      "Login with Gmail",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),*/
                  ],
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
}
