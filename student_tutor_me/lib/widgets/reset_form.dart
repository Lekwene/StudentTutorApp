import 'package:flutter/material.dart';
import 'package:student_tutor_me/config/palette.dart';

class ResetForm extends StatelessWidget {
  const ResetForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: 'Email Address',
            hintStyle: TextStyle(color: textFeildColor),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: primaryColor))),
      ),
    );
  }
}
