import 'package:flutter/material.dart';

import '../../../constants.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItems = [
    'Home',
    'About',
    'Services',
    'Portfolio',
    'Testimonial',
    'Contact',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      height: 100,
      constraints: BoxConstraints(maxWidth: 1110),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
        ),
        boxShadow: [kDefaultShadow]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:
        List.generate(menuItems.length, (index) => buildMenuItem(index)),
      ),
    );
  }

  Widget buildMenuItem(int index) => InkWell(
    onTap: () {
      selectedIndex = index;
      print(selectedIndex);
    },
    child: Container(
      constraints: BoxConstraints(minWidth: 122),
      height: 100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text(
            menuItems[index],
            style: TextStyle(fontSize: 20, color: selectedIndex==index?Colors.green:kTextColor),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 200),
            right: 0,
            left: 0,
            bottom: selectedIndex==index?-2:-32,
            child: Image.asset('assets/images/Hover.png'),
          )
        ],
      ),
    ),
  );
}
