import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class AuthenticationService{
  final FirebaseAuth  _firebaseAuth;

  AuthenticationService(this._firebaseAuth);

  Stream<User> get AuthStateChanges => _firebaseAuth.idTokenChanges();

  Future<void> signOut() async{
    await _firebaseAuth.signOut();
  }

  Future<String> signIn({String email , String password}) async{
    try{
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch(e){
      print(e.message);

    }
  }

  Future<String> signUp({String email ,String password }) async{
    try{
      await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    }on FirebaseAuthException catch(e){
      print(e.message);

    }
  }

}
