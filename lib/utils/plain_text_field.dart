import 'package:flutter/material.dart';
import 'package:medi_app/utils/app_styles.dart';

class PlainTextField extends StatelessWidget {

  final TextEditingController controller;
  final String hintText;
  
  const PlainTextField({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Styles.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Styles.primaryColor,
          ),
        ),
        fillColor: Styles.bgColor,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Styles.textColor,
        ),
      ),
    );
  }
}
