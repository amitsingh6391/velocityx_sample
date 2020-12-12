import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portfolio/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final nameWidget = "Hi  I'm 👐\n Amit  Singh"
        .text
        .white
        .lineHeight(1)
        .size(context.isMobile ? 23 : 25)
        .bold
        .make()
        .shimmer();
    return SafeArea(
      child: VxBox(
              child: VStack([
        ZStack(
          [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: PictureWidget(),
                ),
              ],
            ),
            Row(
              children: [
                VStack([
                  if (context.isMobile) 30.heightBox else 30.heightBox,
                  CustomAppBar().shimmer(primaryColor: Colors.transparent),
                  20.heightBox,
                  nameWidget,
                  20.heightBox,
                  VxBox()
                      .color(Colors.transparent)
                      .size(60, 10)
                      .make()
                      .px4()
                      .shimmer(primaryColor: Colors.transparent),
                  30.heightBox,
                  SocialAccounts(),
                ]).pSymmetric(
                  h: context.percentWidth * 5,
                  v: 20,
                ),
                Expanded(
                  child: VxResponsive(
                    medium: IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                    large: IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                    fallback: const Offstage(),
                  ),
                )
              ],
            ).w(context.screenWidth)
          ],
        )
      ]))
          .size(context.screenWidth, context.percentHeight * 40)
          .color(Colors.transparent)
          .make(),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          " - Introduction".text.gray500.widest.sm.make(),
          10.heightBox,
          "I Have been Persuing B.tech in Computer Science Branch.I'm Passionate Flutter & Python Devloper and Create app which help us to Solve our daily life Problems."
              .text
              .white
              .xl2
              .maxLines(5)
              .make()
              .w(context.isMobile
                  ? context.screenWidth
                  : context.percentWidth * 40),
          25.heightBox,
        ].vStack(),
      ],
      // crossAlignment: CrossAxisAlignment.center,
      // alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquareo,
      size: 50,
      color: Coolors.accentColor,
    );
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 100,
      backgroundImage: AssetImage(
        "images/profile1.png",
        //fit: BoxFit.fill,
        //height: context.percentHeight * 50,
      ),
    );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        AntDesign.linkedin_square,
        color: Colors.blue,
      ).mdClick(() {
        launch("https://www.linkedin.com/in/amit-singh-023055193/");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.github,
        color: Colors.white,
      ).mdClick(() {
        launch("https://github.com/amitsingh6391");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.medium_monogram,
        color: Colors.white,
      ).mdClick(() {
        launch("https://medium.com/@amitsingh506142");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.instagram,
        color: Colors.red,
      ).mdClick(() {
        launch("https://www.instagram.com/_rajput__amit__/");
      }).make(),
      20.widthBox,
      Card(
        color: Colors.purple,
        child: Text("Resume",
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
      Icon(
        Icons.file_download,
        size: 30,
        color: Color(0xFF006400),
      ).mdClick(() {
        launch(
            "https://drive.google.com/file/d/1AVF8Z7tAqIrKbpYSmzEuN7J4i1fWAQDd/view?usp=sharing");
      }).make(),
      20.widthBox,
    ].hStack();
  }
}
