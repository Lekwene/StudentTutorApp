import 'package:flutter/material.dart';
import 'package:student_tutor_me/config/palette.dart';
import 'package:student_tutor_me/screens/reset_password_screen.dart';
import 'package:student_tutor_me/screens/signup_screen.dart';
import 'package:student_tutor_me/widgets/login_form.dart';
import 'package:student_tutor_me/widgets/login_button.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: defaultPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
              ),
              Text(
                'Welcome Back',
                style: titleText,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'New to this app?',
                    style: subTitle,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: textButton.copyWith(
                          decoration: TextDecoration.underline,
                          decorationThickness: 1),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              LoginForm(),
              SizedBox(
                height: 20,
              ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResetPasswordScreen(),
                        ),
                      );
                    },
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                      color: ambezi,
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                      decorationThickness: 1),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              LoginButton(
                buttonText: 'Log In',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
