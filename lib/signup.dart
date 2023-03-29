import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hydroponics/firstpage.dart';
import 'reusable_widgets.dart';
import 'main.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _usernameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      /*appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Sign Up",
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),
        ),
      ),*/
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/hydroback.png"),
              fit: BoxFit.cover
          ),
        ),
        child: SingleChildScrollView(
          child:Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child:Column(
              children: <Widget>[
                const SizedBox(
                  height : 200,
                ),
                reusableTextField("Enter Username", Icons.person_outline, false, _usernameTextController),
                const SizedBox(
                  height : 20,
                ),
                reusableTextField("Enter Email ID", Icons.person_outline, false, _emailTextController),
                const SizedBox(
                  height : 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true, _passwordTextController),
                const SizedBox(
                  height : 60,
                ),
                signInSignUpButton(context, false, (){
                  FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailTextController.text,
                      password: _passwordTextController.text).then((value)  {
                        print("Created a new acc");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => firstpage()));
                  }).onError((error, stackTrace) {
                    print("error ${error.toString()}");
                  });
                })
              ],
            )
          ),
        ),

      ),
    );
  }
}
