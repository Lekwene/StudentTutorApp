import 'package:flutter/material.dart';
import 'package:student_tutor_me/config/palette.dart';
import 'package:student_tutor_me/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: defaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: 120,),
          Text(
            'Welcome Back', 
            style: titleText,
          
           ),

          SizedBox(height: 5,),
          Row(children: [Text(
            'New to this app?',
             style: subTitle,
          ),

          SizedBox(width: 5,),
          Text('Sign Up',
           style: textButton.copyWith(
             decoration: TextDecoration.underline,
             decorationThickness: 1
               ),
              )
             ],
            ),
           SizedBox(height: 10,
           ),
           LoginForm(),
          ],
        ),
      ),
    );
  }
}