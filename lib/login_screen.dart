import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed:(){
            FirebaseAuth.instance.signInWithEmailAndPassword(email: 'rafid0001@gmail.com', password: 'test1234');
          },
          child: Text('Login'),
        ),
      )
    );
  }
}
