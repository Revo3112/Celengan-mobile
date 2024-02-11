import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class GoogleSignin extends StatefulWidget {
  const GoogleSignin({super.key});

  @override
  State<GoogleSignin> createState() => _GoogleSigninState();

  void singinWithGoogle() {
    // Memanggil _singinWithGoogle() dari objek state
    _GoogleSigninState state = _GoogleSigninState();
    state._singinWithGoogle();
  }
}

class _GoogleSigninState extends State<GoogleSignin> {
  // R : Firebase Auth instance to sign in with Google create a objek _auth from FirebaseAuth class
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // R : A user object to store the current user's data is the same as creating any other variable, but the "?" sign is used to tell dart that the variable can be null.
  User? _user;

  @override
  void initState() {
    super.initState();
    // R : authStateChanges is a method that is used to listen to the changes in the user's authentication state
    _auth.authStateChanges().listen((event) {
      setState(() {
        // R : The user object is updated with the current user's data
        _user = event;
        print(_user!.displayName);
      });
    });
  }

  // R : A function to sign in with Google if we want to make this private we can add "_" before the method name
  void _singinWithGoogle() {
    // ubah nama metode menjadi non-private
    try {
      // R : GoogleAuthProvider is a class that is used to sign in with Google
      GoogleAuthProvider googleProvider = GoogleAuthProvider();
      // R : signInWithPopup is a method that is used to sign in with Google
      _auth.signInWithProvider(googleProvider);
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
