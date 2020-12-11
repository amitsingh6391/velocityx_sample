import 'package:portfolio/education.dart';
import 'package:portfolio/skills.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/footer.dart';
import 'package:portfolio/middle.dart';
import 'package:velocity_x/velocity_x.dart';

import 'header.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolors.primaryColor,
      child: VStack([
        HeaderScreen(),
        if (context.isMobile) IntroductionWidget().p16(),
        MiddleScreen(),
        //SizedBox(height:20),
        EducationScreen(),
        SkillsScreen(),
        FooterScreen(),
      ]).scrollVertical(),
    );
  }
}
