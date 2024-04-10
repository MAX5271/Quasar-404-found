import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextField extends StatelessWidget {
  String hintText;
  Widget leading;
  TextEditingController controller = TextEditingController();
  CustomTextField(
      {required this.leading,
      required this.hintText,
      super.key,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        icon: leading,
        labelText: hintText,
        labelStyle: TextStyle(color: Colors.black),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.all(
            Radius.circular(200),
          ),
        ),
      ),
    );
  }
}
