import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomGridItem extends StatelessWidget {
  const CustomGridItem({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.white,
          //color: Colors.green[100],
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Center(
                child: Image.asset(
                  image,
                  height: 200.0,
                ),
              ),
              Container(
                height: 30.0,
                width: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Color.fromARGB(145, 202, 235, 204),
                  border: Border.all(
                    width: 2.0,
                    color: Color.fromARGB(145, 202, 235, 204),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Center(
                    child: Text(
                      '50%',
                      style: TextStyle(
                        color: Colors.green[400],
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'HERSCHEL SUPPLY CO.',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                        child: Text(
                          '99.99',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                        alignment: Alignment.centerRight,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  flex: 2,
                  child: Align(
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16.0,
                        color: Colors.grey[400],
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    alignment: Alignment.topLeft,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.black),
                    ),
                    onPressed: () => {},
                    child: Text(
                      'Add to cart',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
