import 'package:firebase_app/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on FirebaseUser
  User _userFromFirebaseUser(FirebaseUser user){
    return user ! = null ? User(user);
  }

  // sign in anonymously
  Future signInAnon() async{
    try {
      // AuthResult result = await _auth.signInAnonymously();
      // FirebaseUser user = result.user;
      FirebaseUser user = (await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password)).user
      final FirebaseUser user = (await _auth.signInWithCredential()).user;


      return user;
    } catch(e){
      print(e.toString());
      return null;
    }
  }

  // sign in with email and password

  //register with email & password

  //sign out

}