import 'package:flutter/material.dart';

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.account_circle,
              color: Colors.grey[400],
              size: 35.0,
            ),
            Expanded(
              child: Text('Add Customer'),
            ),
            Icon(
              Icons.add_circle_outline,
              color: Colors.grey[400],
              size: 35.0,
            ),
          ],
        ),
      ),
      onPressed: () {},
      constraints: const BoxConstraints.expand(
        width: double.infinity,
        height: 70.0,
      ),
      fillColor: Color.fromARGB(44, 246, 204, 204),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Color.fromARGB(140, 158, 158, 158),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(
          8.0,
        ),
      ),
      elevation: 0.0,
      focusElevation: 0.0,
      disabledElevation: 0.0,
    );
  }
}
