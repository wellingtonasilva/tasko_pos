import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasko_pos/components/custom_bordered_text.dart';

class CustomOrderItem extends StatelessWidget {
  const CustomOrderItem(
      {Key? key,
      required this.description,
      required this.comment,
      required this.quantity,
      required this.totalItem,
      this.isLast = false})
      : super(key: key);

  final String description;
  final String comment;
  final int quantity;
  final double totalItem;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      decoration: isLast
          ? null
          : const BoxDecoration(
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
          children: [
            Icon(
              Icons.photo,
              color: Colors.grey[400],
              size: 35.0,
            ),
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          description,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          comment,
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 11.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomBorderedText(quantity: quantity),
                  Expanded(
                    flex: 2,
                    child: Center(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          totalItem.toStringAsFixed(2),
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
