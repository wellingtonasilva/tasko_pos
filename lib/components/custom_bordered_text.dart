import 'package:flutter/material.dart';

class CustomBorderedText extends StatelessWidget {
  const CustomBorderedText({
    Key? key,
    required this.quantity,
  }) : super(key: key);

  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.grey[200],
        border: Border.all(
          width: 2.0,
          color: Color.fromARGB(140, 158, 158, 158),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Center(
          child: Text(
            quantity.toString(),
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
        ),
      ),
    );
  }
}
