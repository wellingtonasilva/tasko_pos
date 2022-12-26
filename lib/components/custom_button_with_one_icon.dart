import 'package:flutter/material.dart';

class CustomButtonWithOneIcon extends StatelessWidget {
  const CustomButtonWithOneIcon({
    Key? key,
    this.label,
    this.icon,
  }) : super(key: key);

  final String? label;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromARGB(140, 158, 158, 158),
            width: 1.0,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                label ?? "",
                style: TextStyle(
                  color: Colors.blue[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Icon(
              icon,
              color: Color.fromARGB(133, 13, 72, 161),
              size: 35.0,
            ),
          ],
        ),
      ),
    );
  }
}
