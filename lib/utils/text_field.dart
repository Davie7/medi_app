import 'package:flutter/material.dart';
import 'package:medi_app/utils/app_styles.dart';

class MyTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  // final bool obscureText;

  const MyTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    // required this.obscureText,
  }) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: _obscureText,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Styles.white
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color:  Styles.primaryColor,
          ),
        ),
        fillColor: Styles.bgColor,
        filled: true,
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: Styles.textColor,
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,
            color: Styles.primaryColor,
          ),
        ),
      ),
    );
  }
}



