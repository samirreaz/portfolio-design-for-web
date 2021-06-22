import 'package:flutter/material.dart';
import 'package:samir_portfoio/component/default_button.dart';
import 'package:samir_portfoio/component/my_uotlined_button.dart';
import 'package:samir_portfoio/constants.dart';

import 'component/about_section_text.dart';
import 'component/about_text_with_sign.dart';
import 'component/experience_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110),
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      child: Column(
        children: [
          Row(
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      'Color choose is very important part of App  Development. Material Design can be a good helper for a developer.Material Design can be a good helper for a developer',
                ),
              ),
              ExperienceCard(
                numOfExp: '08',
              ),
              Expanded(
                child: AboutSectionText(
                  text:
                      'Color choose is very important part of App  Development. Material Design can be a good helper for a developer.Material Design can be a good helper for a developerColor choose is very important part of App  Development. Material Design can be a good helper for a developer.Material Design can be a good helper for a developer',
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                title: 'Hire Me!',
                imgSrc: 'assets/images/hand.png',
                press: () {},
              ),
              SizedBox(width: kDefaultPadding),
              DefaultButton(title:'Download CV',imgSrc: 'assets/images/download.png',press: (){},)
            ],
          ),
        ],
      ),
    );
  }
}

