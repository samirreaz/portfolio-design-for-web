import 'package:flutter/material.dart';

import '../constants.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({
    Key? key,
    required this.title,
    required this.imgSrc,
    required this.press,
  }) : super(key: key);

  final String title, imgSrc;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlinedButton(
        onPressed: ()=>press,
        style: OutlinedButton.styleFrom(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding,
              horizontal: kDefaultPadding * 2.5,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            )),
        child: Row(
          children: [
            Image.asset(
              imgSrc,
              height: 40,
            ),
            SizedBox(width: kDefaultPadding),
            Text(title)
          ],
        ),
      ),
    );
  }
}
