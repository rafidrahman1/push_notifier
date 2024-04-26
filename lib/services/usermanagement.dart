import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:push_notifier/dashboard_screen.dart';
import 'package:push_notifier/login_screen.dart';

class UserManagement{
  Widget handleAuth() {
    // ignore: unnecessary_new
    return new StreamBuilder(
    stream: FirebaseAuth.instance.authStateChanges(), 
    builder: (BuildContext context, snapshot) {
     if(snapshot.hasData){
      return DashboardScreen();
     }
     else{
      return LoginScreen();
     }
    },
    );
  }
  singOut(){
    FirebaseAuth.instance.signOut();
  }
}