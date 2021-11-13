import 'package:flutter/material.dart';
import 'package:student_tutor_me/config/palette.dart';

class LoginButton extends StatelessWidget {
 final String buttonText;
  LoginButton({required this.buttonText});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.08,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: primaryColor),
      child: Text(buttonText , 
      style: textButton.copyWith(color: white)),
    );
  }
}
