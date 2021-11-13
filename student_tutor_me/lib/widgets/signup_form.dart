import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:student_tutor_me/config/palette.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputForm('First Name',false),
        buildInputForm('Last Name',false),
        buildInputForm('Email Address',false),
        buildInputForm('Phone Number',false),
        buildInputForm('Password',true),
        buildInputForm('Confirm Password',true),
      ],
    );
  }

  Padding buildInputForm(String hint , bool pass) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        obscureText: pass ? _isObscure:false,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: textFeildColor),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: primaryColor)),
                   suffixIcon: pass
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    icon:  _isObscure 
                    ? Icon(
                      Icons.visibility_off,
                       color: textFeildColor,
                       )
                      :Icon(
                        Icons.visibility,
                        color: primaryColor,
                      ))
                : null, 
         ),
      ),
    );
  }
}
