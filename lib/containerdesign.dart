import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

import 'package:supercharged/supercharged.dart';

class BarChartApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Bar(.3, "CSS"),
          Bar(0.5, "Rest Api"),
          Bar(0.7, "HTML"),
          Bar(0.8, "Dart"),
          Bar(0.9, "Python"),
          Bar(0.98, "Flutter"),
          Bar(0.84, "Django"),
          Bar(0.84, "Firebase"),
        ],
      ),
    );
  }
}

class Bar extends StatelessWidget {
  final double height;
  final String label;

  final int _baseDurationMs = 10000;
  final double _maxElementHeight = 250;

  Bar(this.height, this.label);

  @override
  Widget build(BuildContext context) {
    return PlayAnimation<double>(
      duration: Duration(milliseconds: (height * _baseDurationMs).round()),
      tween: 0.0.tweenTo(height),
      builder: (context, child, animatedHeight) {
        return Column(
          children: <Widget>[
            Container(
              height: (1 - animatedHeight) * _maxElementHeight,
            ),
            Container(
              width: 15,
              height: animatedHeight * _maxElementHeight,
              color: Colors.red,
            ),
            Text(
              label,
              style: TextStyle(fontSize: 10, color: Colors.white),
            )
          ],
        );
      },
    );
  }
}
