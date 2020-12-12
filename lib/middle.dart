import 'package:flutter/material.dart';

import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class MiddleScreen extends StatelessWidget {
  Color baseColor = Color(0xFFF2F2F2);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Projects",
                    style: TextStyle(fontSize: 30, color: Colors.yellow)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 38.0),
            child: myproject(
                "images/3.jfif",
                "Academic Master",
                "Academic Master is \nstudents most loved \nlearning app . We are on\n a mission for enable\n learning, the missing\n part of indian \neducation system.",
                "https://github.com/amitsingh6391/Academic-master",
                "https://play.google.com/store/apps/details?id=com.academic.master&hl=en&gl=US"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 38.0),
            child: myproject(
                "images/2.jfif",
                "Treato",
                // "The Treato Partner App\n is to simplify the process of orders to partners &the entire process of ordering in, from confirming to preparation to delivery. The app create connect between our partners and Treato for ordering. This make sure that everything runs on modern technology, making it simpler than ever before to manage a takeaway business.",
                "The Treato Partner App is to  \n  simplify the process of orders\n to partners &the entire\n process of ordering in,\n from confirming to \npreparation to delivery. \n This app create connect \n between our partners and \n Treato for ordering.",
                "https://github.com/amitsingh6391/Vendor-Shop",
                "https://play.google.com/store/apps/details?id=com.hst.treatovendor&hl=en&gl=US"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 38.0),
            child: myproject(
                "images/1.jfif",
                "Prerna Fruits &\n Vegetables",
                "One-stop destination \n for buying farm-fresh, \n locally sourced fruits \n and vegetables! We are \n an eCommerce portal \n serving customers in \n Jodhpur with their daily\n grocery and fresh\n produce requirements. ",
                "https://github.com/amitsingh6391/Prerna_Fruits_and_Vegetable_shop",
                "https://play.google.com/store/apps/details?id=com.nf.e_commerce&hl=en&gl=US"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 38.0),
            child: myproject(
                "images/4.jfif",
                "Your Shop",
                "Shop online by \nconnecting with those\n who want to sell! Find \nclothing ads, electronics\n or real estate deals on\nthe biggest new and\n used product shopping\n and sales platform on the\n market!",
                "https://github.com/amitsingh6391/yourshop-flutter-",
                "https://play.google.com/store/apps/details?id=com.yourshop.amitapps&hl=en&gl=US"),
          ),
        ],
      ),
    );
  }
}

Widget myproject(String imageurl, String title, String text, String github,
    String playstore) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Card(
        elevation: 10,
        child: Container(
          color: Colors.transparent,
          height: 200,
          width: 180,
          child: Image(
            image: AssetImage(imageurl),
          ),
        ),
      ),
      SizedBox(width: 10),
      Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  launch(github);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(AntDesign.github, color: Colors.white),
                ),
              ),
              GestureDetector(
                onTap: () {
                  launch(playstore);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(AntDesign.link, color: Colors.white),
                ),
              )
            ],
          )
        ],
      ))
    ],
  );
}
