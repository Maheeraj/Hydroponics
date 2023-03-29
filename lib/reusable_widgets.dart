import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';


Image logoWidget(String imageName){
  return Image.asset(
    imageName,
    fit:BoxFit.fitWidth,
    width: 240,
    height: 240,
    color: Colors.white,
  );
}

TextField reusableTextField(String text, IconData icon, bool isPasswordType, TextEditingController controller)
{
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.white,
      ),
      labelText: text,
      labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.black.withOpacity(0.3),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(width: 0,style: BorderStyle.none,)
      ),
    ),
    keyboardType: isPasswordType? TextInputType.visiblePassword :TextInputType.emailAddress,
  );
}

Container signInSignUpButton(
  BuildContext context, bool isLogin, Function onTap){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: (){
        onTap();
      },
      child: Text(
        isLogin ? 'Log In' : 'Sign Up',
        style: const TextStyle(
          color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states){
          if(states.contains(MaterialState.pressed)){
            return Colors.blue;
          }
          return Colors.blue;
        }),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder( borderRadius: BorderRadius.circular(10))
        )
      ),
    ),
  );
}


_bottomSheet(context){
  showModalBottomSheet(
      context: context,
      builder: (BuildContext c){
        return Container(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
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
                          primary: Colors.white.withOpacity(0.1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15))// background
                          ),
                        ),
                        onPressed: (){},
                        child: Text("28° - 32°",
                          style:TextStyle(fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:15,right: 10,bottom: 5),
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
                          primary: Colors.white.withOpacity(0.1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15))// background
                          ),
                        ),
                        onPressed: (){},
                        child: Text("7-10",
                          style:TextStyle(fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:15,right: 10,bottom: 5),
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
                          primary: Colors.white.withOpacity(0.1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15))// background
                          ),
                        ),
                        onPressed: (){},
                        child: Text("850-1200 ppm",
                          style:TextStyle(fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(height: 2.0,),
              ],
            ),
          ),
        );
      }
  );
}
FlutterTts flutterTts = FlutterTts();
void textToSpeech(String text) async {
  await flutterTts.setLanguage("en-US");
  await flutterTts.setVolume(1);
  await flutterTts.setSpeechRate(0.2);
  await flutterTts.setPitch(1);
  await flutterTts.speak(text);
}