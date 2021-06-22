import 'package:flutter/material.dart';


class PersonPic extends StatelessWidget {
  const PersonPic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 439,
        maxHeight: 660,
      ),
      child: Image.asset('assets/images/samir_img3.png'),
    );
  }
}

