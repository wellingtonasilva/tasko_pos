import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BasicTextField extends StatelessWidget {
  BasicTextField({super.key, this.labelText});

  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFFFBA2E),
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFFFBA2E),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFFFBA2E),
          ),
        ),
        labelStyle: TextStyle(
          color: Color(0xFFFFBA2E),
          fontFamily: 'Roboto',
        ),
      ),
      style: TextStyle(
        color: Color(0xFFFFFFFF),
        fontFamily: 'Roboto',
        fontSize: 16.0,
      ),
    );
  }
}
