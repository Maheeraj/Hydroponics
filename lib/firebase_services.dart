import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'dart:ffi';

class FirebaseServices{
  final _auth = FirebaseAuth.instance;
  final _googleSignIn = GoogleSignIn();

  signInWithGoogle() async {
    try{
      final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      if(googleSignInAccount!=null){
        final GoogleSignInAuthentication googleSignInAuthentication= await googleSignInAccount.authentication;
        final AuthCredential authCredential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken
        );
        print("Working1");
        await _auth.signInWithCredential(authCredential);
        print("Working2");
      }
    }on FirebaseAuthException catch (e){
      print(e.message);
      print("Not working");
      throw e;
    }
  }

  signOut() async{
    await _auth.signOut();
    await _googleSignIn.signOut();
  }
}