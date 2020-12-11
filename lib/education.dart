import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:expansion_card/expansion_card.dart';

class EducationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Vx.green700,
        height: context.isMobile ? 500 : 550,
        child: Column(
          children: [
            SizedBox(height: 10),
            Center(
              child: Text("Education",
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: context.isMobile ? 40 : 40)),
            ),
            Container(
                child: context.isMobile
                    ? Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              elevation: 10,
                              color: Vx.green900,
                              borderOnForeground: false,
                              child: ExpansionCard(
                                leading: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage("images/mit.jpg"),
                                ),
                                backgroundColor: Vx.green900,
                                borderRadius: 100,
                                title: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "B.Tech",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.yellow),
                                      ),
                                      Text("2018-2022",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.yellow,
                                          )),
                                    ],
                                  ),
                                ),
                                children: <Widget>[
                                  Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 7),
                                      child: Column(children: [
                                        Text(
                                          "I have been Persuing B.Tech from Meerut Institute of Technology",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "1 Year : 9.6 CGPA\n 2 Year : 9 CGPA",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white),
                                        ),
                                      ]))
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              elevation: 10,
                              color: Vx.green900,
                              borderOnForeground: false,
                              child: ExpansionCard(
                                leading: CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage("images/inter.jpg"),
                                ),
                                backgroundColor: Vx.green900,
                                borderRadius: 100,
                                title: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Senior Secondary(XII),Science",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.yellow,
                                          )),
                                      Text("2017-18",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.yellow,
                                          )),
                                    ],
                                  ),
                                ),
                                children: <Widget>[
                                  Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 7),
                                      child: Column(children: [
                                        Text(
                                          "I had Completed my XII from St.Mary Inter College",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "Percentage (%) : 84.5 \n P/C/M : 85+",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white),
                                        ),
                                      ]))
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              elevation: 10,
                              color: Vx.green900,
                              borderOnForeground: false,
                              child: ExpansionCard(
                                leading: CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage("images/highschool.jpg"),
                                ),
                                backgroundColor: Vx.green900,
                                borderRadius: 100,
                                title: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("High School (X)",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.yellow,
                                          )),
                                      Text("2015-16",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.yellow,
                                          )),
                                    ],
                                  ),
                                ),
                                children: <Widget>[
                                  Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 7),
                                      child: Column(children: [
                                        Text(
                                          "I had Completed my X from St.Mary Inter College",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "Percentage (%) : 90.0 \n P/C/M : 90+",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white),
                                        ),
                                      ]))
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    : Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 120, right: 120),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Vx.green900),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 200, right: 200),
                              child: Card(
                                color: Vx.green900,
                                child: ExpansionCard(
                                  trailing: Text(
                                    "Details",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  ),
                                  leading: CircleAvatar(
                                    radius: 40,
                                    backgroundImage:
                                        AssetImage("images/mit.jpg"),
                                  ),
                                  backgroundColor: Vx.green900,
                                  title: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "B.Tech",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.yellow),
                                        ),
                                        Text("2018-2022",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.yellow,
                                            )),
                                      ],
                                    ),
                                  ),
                                  children: <Widget>[
                                    Container(
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 7),
                                        child: Column(children: [
                                          Text(
                                            "I have been Persuing B.Tech from Meerut Institute of Technology",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "1 Year : 9.6 CGPA\n 2 Year : 9 CGPA",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white),
                                          ),
                                        ]))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 120, right: 120, top: 20),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Vx.green900),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 200, right: 200),
                              child: Card(
                                color: Vx.green900,
                                child: ExpansionCard(
                                  trailing: Text(
                                    "Details",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  ),
                                  leading: CircleAvatar(
                                    radius: 40,
                                    backgroundImage:
                                        AssetImage("images/inter.jpg"),
                                  ),
                                  backgroundColor: Vx.green900,
                                  title: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Senior Secondary(XII),Science",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.yellow),
                                        ),
                                        Text("2017-18",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.yellow,
                                            )),
                                      ],
                                    ),
                                  ),
                                  children: <Widget>[
                                    Container(
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 7),
                                        child: Column(children: [
                                          Text(
                                            "I had Completed my XII from St.Mary Inter College",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "Percentage : 84.5 \n P/C/M : 85+",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white),
                                          ),
                                        ]))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 120, right: 120, top: 20),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Vx.green900),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 200, right: 200),
                              child: Card(
                                color: Vx.green900,
                                child: ExpansionCard(
                                  trailing: Text(
                                    "Details",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  ),
                                  leading: CircleAvatar(
                                    radius: 40,
                                    backgroundImage:
                                        AssetImage("images/highschool.jpg"),
                                  ),
                                  backgroundColor: Vx.green900,
                                  title: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "High School",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.yellow),
                                        ),
                                        Text("2015-16",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.yellow,
                                            )),
                                      ],
                                    ),
                                  ),
                                  children: <Widget>[
                                    Container(
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 7),
                                        child: Column(children: [
                                          Text(
                                            "I had Completed my X from St.Mary Inter College",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "Percentage : 90.0 \n P/C/M : 90",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white),
                                          ),
                                        ]))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ]))
          ],
        ));
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
        .neumorphic(color: Vx.green700, elevation: 5, curve: VxCurve.flat)
        .alignCenter
        .square(200)
        .make()
        .p16();
  }
}
