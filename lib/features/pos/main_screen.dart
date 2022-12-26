import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tasko_pos/components/custom_button_with_icon.dart';
import 'package:tasko_pos/components/custom_button_with_one_icon.dart';
import 'package:tasko_pos/components/custom_grid_item.dart';
import 'package:tasko_pos/components/custom_icon_button.dart';
import 'package:tasko_pos/components/custom_list_item.dart';
import 'package:tasko_pos/components/custom_text_bottom_line.dart';

class PosMainScreen extends StatelessWidget {
  const PosMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PosContent(),
    );
  }
}

class PosContent extends StatefulWidget {
  const PosContent({super.key});

  @override
  State<PosContent> createState() => _PosContentState();
}

class _PosContentState extends State<PosContent> {
  var selectedIndex = 0;

  void onSelectButton(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 25.0,
          ),
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                color: Color.fromARGB(140, 158, 158, 158),
                width: 1.8,
              ),
            ),
          ),
          width: 90.0,
          child: Column(
            children: [
              Container(
                height: 50.0,
                child: Icon(
                  Icons.reorder,
                  color: Colors.grey[400],
                  size: 40.0,
                ),
              ),
              Divider(
                color: Colors.grey[400],
              ),
              SizedBox(
                height: 30.0,
              ),
              CustomIconButton(
                icon: Icons.shopping_cart,
                isSelected: selectedIndex == 0,
                onTap: () {
                  onSelectButton(0);
                },
              ),
              CustomIconButton(
                icon: Icons.inventory,
                isSelected: selectedIndex == 1,
                onTap: () {
                  onSelectButton(1);
                },
              ),
              CustomIconButton(
                icon: Icons.ssid_chart,
                isSelected: selectedIndex == 2,
                onTap: () {
                  onSelectButton(2);
                },
              ),
              CustomIconButton(
                icon: Icons.settings,
                isSelected: selectedIndex == 3,
                onTap: () {
                  onSelectButton(3);
                },
              ),
              CustomIconButton(
                icon: Icons.notifications,
                isSelected: selectedIndex == 4,
                onTap: () {
                  onSelectButton(4);
                },
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: Color.fromARGB(140, 158, 158, 158),
                    width: 1.8,
                  ),
                ),
              ),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 25.0,
                        left: 8.0,
                        right: 8.0,
                      ),
                      height: 50.0,
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.grey[400],
                            size: 40.0,
                          ),
                          hintText: 'Products',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.none,
                            ),
                          ),
                          hintStyle: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 30.0,
                              fontWeight: FontWeight.w600),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.none,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey[400],
                    ),
                    Expanded(
                      child: CustomScrollView(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        primary: false,
                        slivers: <Widget>[
                          SliverPadding(
                            padding: const EdgeInsets.all(10),
                            sliver: SliverGrid.count(
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              crossAxisCount: 2,
                              children: <Widget>[
                                CustomGridItem(
                                  image: "images/570200.jpg",
                                ),
                                CustomGridItem(
                                  image: "images/1316622.jpg",
                                ),
                                CustomGridItem(
                                  image: "images/570200.jpg",
                                ),
                                CustomGridItem(
                                  image: "images/1316622.jpg",
                                ),
                                CustomGridItem(
                                  image: "images/1316622.jpg",
                                ),
                                // CustomGridItem(
                                //   image: "images/570200.jpg",
                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 25.0,
                  left: 8.0,
                  right: 8.0,
                ),
                height: 50.0,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      verticalDirection: VerticalDirection.up,
                      children: [
                        Icon(
                          Icons.delete,
                          color: Colors.grey[400],
                          size: 40.0,
                        ),
                        Expanded(
                          child: Container(
                            child: Text(
                              'Cart',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.grey[400],
                          size: 40.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey[400],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButtonWithIcon(),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    bottom: 0,
                    left: 8.0,
                    right: 8.0,
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          width: 2.0,
                          color: Color.fromARGB(140, 158, 158, 158),
                        ),
                      ),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: [
                          CustomOrderItem(
                            description: 'Produto 1',
                            comment: 'Linha 1',
                            quantity: 1,
                            totalItem: 29.00,
                          ),
                          CustomOrderItem(
                            description: 'Produto 2',
                            comment: 'Linha 1',
                            quantity: 1,
                            totalItem: 59.00,
                          ),
                          CustomOrderItem(
                            description: 'Produto 3',
                            comment: 'Linha 1',
                            quantity: 3,
                            totalItem: 80.00,
                          ),
                          CustomOrderItem(
                            description: 'Produto 3',
                            comment: 'Linha 1',
                            quantity: 3,
                            totalItem: 80.00,
                          ),
                          CustomOrderItem(
                            description: 'Produto 3',
                            comment: 'Linha 1',
                            quantity: 3,
                            totalItem: 80.00,
                          ),
                          CustomOrderItem(
                            description: 'Produto 3',
                            comment: 'Linha 1',
                            quantity: 3,
                            totalItem: 80.00,
                          ),
                          CustomOrderItem(
                            description: 'Produto 3',
                            comment: 'Linha 1',
                            quantity: 3,
                            totalItem: 80.00,
                          ),
                          CustomOrderItem(
                            description: 'Produto 3',
                            comment: 'Linha 1',
                            quantity: 3,
                            totalItem: 80.00,
                          ),
                          CustomOrderItem(
                            description: 'Produto 3',
                            comment: 'Linha 1',
                            quantity: 3,
                            totalItem: 80.00,
                            isLast: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(
                      width: 2.0,
                      color: Color.fromARGB(140, 158, 158, 158),
                    ),
                  ),
                  child: Column(
                    children: [
                      CustomButtonWithOneIcon(
                        icon: Icons.add_circle_outline,
                        label: 'Add cart discount',
                      ),
                      CustomTextBottomLine(
                        labelLeft: 'Subtotal',
                        labelRight: '300',
                      ),
                      CustomTextBottomLine(
                        labelLeft: 'Tax',
                        labelRight: '300',
                      ),
                      CustomButtonWithOneIcon(
                        icon: Icons.add_circle_outline,
                        label: 'Add shipping',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.blue[900],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          'Teste',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            '300.00',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
