import 'package:flutter/material.dart';

class LogoMedium extends StatelessWidget {
  const LogoMedium({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Image.asset(
          "images/ic_tasko_saneamento.png",
          height: 180.0,
          width: 180.0,
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Text(
          'TASKO',
          style: TextStyle(
            fontFamily: 'LexendZetta',
            fontSize: 45.0,
            color: Color(0xFFFFBA2E),
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Divider(
          color: Color(0xFFFFBA2E),
          height: 2.0,
          endIndent: 100.0,
          indent: 100.0,
          thickness: 3.0,
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Text(
          'SANEAMENTO',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w100,
            fontSize: 30.0,
            color: Color(0xFFFFBA2E),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
