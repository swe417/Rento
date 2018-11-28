import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
//pages
import 'UIs/LogInPage.dart';
import 'UIs/CreateAccountPage.dart';
import 'UIs/LoginScreen2.dart';
import 'UIs/SearchPage.dart';

void main() {
  //MapView.setApiKey('AIzaSyBTM7tUit-IU6DS0of0rG89rLcaFX1aiFU');
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      home: SearchPage(),
      routes: <String, WidgetBuilder>{
        '/LogInPage': (BuildContext context) => new MyApp(),
        '/CreateAccountPage': (BuildContext context) => new CreateAccountPage(),
        '/LoginScreen2' : (BuildContext context) => new LoginScreen3(),
        '/SearchPage' : (BuildContext context) => new SearchPage(),
      },
    );
  }
}
