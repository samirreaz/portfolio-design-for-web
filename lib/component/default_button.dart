import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.title,
    required this.imgSrc,
    required this.press,
  }) : super(key: key);

  final String title, imgSrc;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
                vertical: kDefaultPadding, horizontal: kDefaultPadding * 2.5),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            backgroundColor: Color(0xFFE8F0F9)),
        onPressed: ()=>press,
        child: Row(
          children: [
            Image.asset(imgSrc),
            SizedBox(width: kDefaultPadding),
            Text(title),
          ],
        ));
  }
}
