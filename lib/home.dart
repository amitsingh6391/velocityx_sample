import 'package:flutter_icons/flutter_icons.dart';
import 'package:portfolio/education.dart';
import 'package:portfolio/skills.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/footer.dart';
import 'package:portfolio/middle.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:simple_animations/simple_animations.dart';

import 'header.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Coolors.primaryColor,
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  child: Text(
                    "🏚️",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                CircleAvatar(
                  child: Text(
                    "📩",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                CircleAvatar(
                  child: Text(
                    "🏆",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),

          HeaderScreen(),
          if (context.isMobile) IntroductionWidget().p16(),
          MiddleScreen(),
          //SizedBox(height:20),
          EducationScreen(),
          // SkillsScreen(),
          FooterScreen(),
        ]).scrollVertical(),
      ),
    );
  }
}
