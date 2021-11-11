import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_tutor_me/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins' ),
      home: LoginScreen(),
    );
  }
}
