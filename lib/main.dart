import 'package:flutter/material.dart';
import 'package:weight_track_flutter/screens/auth_screen.dart';
import 'package:weight_track_flutter/screens/data_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weight Track',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        backgroundColor: Colors.teal,
        accentColor: Colors.yellow,
        accentColorBrightness: Brightness.dark,
        buttonTheme: ButtonTheme.of(context).copyWith(
          buttonColor: Colors.teal,
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.onAuthStateChanged,
        builder: (ctx, userSnapshot) {
          if (userSnapshot.hasData) {
            return DataScreen();
          }
          return AuthScreen();
        },
      ),
    );
  }
}
