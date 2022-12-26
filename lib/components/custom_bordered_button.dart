import 'package:flutter/material.dart';

class CustomBorderedButton extends StatelessWidget {
  const CustomBorderedButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  final String label;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints.expand(
        width: double.infinity,
        height: 45.0,
      ),
      fillColor: Color(0xFF7D5700),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            25.0,
          ),
        ),
      ),
      textStyle: TextStyle(
        color: Colors.white,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontSize: 14.0,
      ),
      focusColor: Color(0xFFFFBA2E),
      onPressed: () {},
      child: Text(label),
    );
  }
}
