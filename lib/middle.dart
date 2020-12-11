import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class MiddleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.green900,
      child: Flex(
          direction: context.isMobile ? Axis.vertical : Axis.horizontal,
          children: [
            "All Creative works,\n"
                .richText
                .withTextSpanChildren(
                    ["Selected projects.".textSpan.yellow400.make()])
                .xl4
                .white
                .make(),
            20.widthBox,
            Expanded(
                child: VxSwiper(
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              items: [
                GestureDetector(
                  onTap: () => launch(
                    "https://play.google.com/store/apps/details?id=com.academic.master&hl=es_VE",
                  ),
                  child: ProjectWidget(title: "Academic Master"),
                ),
                GestureDetector(
                  onTap: () => launch(
                    "https://play.google.com/store/apps/details?id=com.yourshop.amitapps&hl=es_VE",
                  ),
                  child: ProjectWidget(title: "Your Shop"),
                ),
                GestureDetector(
                  onTap: () => launch(
                    "https://github.com/amitsingh6391/covid-tracker",
                  ),
                  child: ProjectWidget(title: "Covid tracker"),
                ),
                GestureDetector(
                  onTap: () => launch(
                    "https://github.com/amitsingh6391/Antichina",
                  ),
                  child: ProjectWidget(title: "Anti China"),
                ),
                GestureDetector(
                  onTap: () => launch(
                    "https://github.com/amitsingh6391/Myawesomecart",
                  ),
                  child: ProjectWidget(title: "My AwesomeCart"),
                ),
                GestureDetector(
                  onTap: () => launch(
                    "https://github.com/amitsingh6391/Railway-app-in-flutter",
                  ),
                  child: ProjectWidget(title: "Railway app"),
                ),
              ],
              height: 170,
              viewportFraction: context.isMobile ? 0.75 : 0.4,
              autoPlay: true,
              autoPlayInterval: Duration(
                seconds: 3,
              ),
              autoPlayAnimationDuration: 1.seconds,
            ))
          ]).p64().h(context.isMobile ? 500 : 300),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String title;

  const ProjectWidget({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return title.text.bold.white.xl.wide.center
        .make()
        .box
        .p8
        .roundedLg
        .neumorphic(color: Vx.green900, elevation: 5, curve: VxCurve.flat)
        .alignCenter
        .square(200)
        .make()
        .p16();
  }
}

//Vx.purple700





