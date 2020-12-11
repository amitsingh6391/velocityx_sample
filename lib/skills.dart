import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class SkillsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xff252733),
      child: Flex(
          direction: context.isMobile ? Axis.vertical : Axis.horizontal,
          children: [
            Text("MY SKILLS",
                style: TextStyle(fontSize: 30, color: Colors.yellow)),
            Expanded(
                child: VxSwiper(
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              items: [
                ProjectWidget(),
                PythonWidget(),
                FirebaseWidget(),
                DjangoWidget(),
                HtmlWidget(),
                CWidget(),
                DataanalyticWidget(),
              ],
              height: 170,
              viewportFraction: context.isMobile ? 0.75 : 0.4,
              autoPlay: true,
              autoPlayInterval: Duration(
                seconds: 7,
              ),
              autoPlayAnimationDuration: 2.seconds,
            ))
          ]).p64().h(context.isMobile ? 400 : 300),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SfRadialGauge(
            enableLoadingAnimation: true,
            animationDuration: 4500,
            axes: <RadialAxis>[
          RadialAxis(minimum: 0, maximum: 150, ranges: <GaugeRange>[
            GaugeRange(
                startValue: 0,
                endValue: 50,
                color: Colors.green,
                startWidth: 10,
                endWidth: 10),
            GaugeRange(
                startValue: 50,
                endValue: 100,
                color: Colors.orange,
                startWidth: 10,
                endWidth: 10),
            GaugeRange(
                startValue: 100,
                endValue: 150,
                color: Colors.red,
                startWidth: 10,
                endWidth: 10)
          ], pointers: <GaugePointer>[
            NeedlePointer(value: 90, needleColor: Colors.white)
          ], annotations: <GaugeAnnotation>[
            GaugeAnnotation(
                widget: Container(
                    child: Text('  90  % \n Flutter',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
                angle: 90,
                positionFactor: 0.5)
          ])
        ]));
  }
}

///for python

class PythonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SfRadialGauge(
            enableLoadingAnimation: true,
            animationDuration: 4500,
            axes: <RadialAxis>[
          RadialAxis(minimum: 0, maximum: 150, ranges: <GaugeRange>[
            GaugeRange(
                startValue: 0,
                endValue: 50,
                color: Colors.green,
                startWidth: 10,
                endWidth: 10),
            GaugeRange(
                startValue: 50,
                endValue: 100,
                color: Colors.orange,
                startWidth: 10,
                endWidth: 10),
            GaugeRange(
                startValue: 100,
                endValue: 150,
                color: Colors.red,
                startWidth: 10,
                endWidth: 10)
          ], pointers: <GaugePointer>[
            NeedlePointer(value: 95, needleColor: Colors.white)
          ], annotations: <GaugeAnnotation>[
            GaugeAnnotation(
                widget: Container(
                    child: Text('  95  % \n Python',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
                angle: 90,
                positionFactor: 0.5)
          ])
        ]));
  }
}

//Firebase

class FirebaseWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SfRadialGauge(
            enableLoadingAnimation: true,
            animationDuration: 4500,
            axes: <RadialAxis>[
          RadialAxis(minimum: 0, maximum: 150, ranges: <GaugeRange>[
            GaugeRange(
                startValue: 0,
                endValue: 50,
                color: Colors.green,
                startWidth: 10,
                endWidth: 10),
            GaugeRange(
                startValue: 50,
                endValue: 100,
                color: Colors.orange,
                startWidth: 10,
                endWidth: 10),
            GaugeRange(
                startValue: 100,
                endValue: 150,
                color: Colors.red,
                startWidth: 10,
                endWidth: 10)
          ], pointers: <GaugePointer>[
            NeedlePointer(value: 90, needleColor: Colors.white)
          ], annotations: <GaugeAnnotation>[
            GaugeAnnotation(
                widget: Container(
                    child: Text('  70  % \n Firebase',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
                angle: 90,
                positionFactor: 0.5)
          ])
        ]));
  }
}

//Django

class DjangoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SfRadialGauge(
            enableLoadingAnimation: true,
            animationDuration: 4500,
            axes: <RadialAxis>[
          RadialAxis(minimum: 0, maximum: 150, ranges: <GaugeRange>[
            GaugeRange(
                startValue: 0,
                endValue: 50,
                color: Colors.green,
                startWidth: 10,
                endWidth: 10),
            GaugeRange(
                startValue: 50,
                endValue: 100,
                color: Colors.orange,
                startWidth: 10,
                endWidth: 10),
            GaugeRange(
                startValue: 100,
                endValue: 150,
                color: Colors.red,
                startWidth: 10,
                endWidth: 10)
          ], pointers: <GaugePointer>[
            NeedlePointer(value: 60, needleColor: Colors.white)
          ], annotations: <GaugeAnnotation>[
            GaugeAnnotation(
                widget: Container(
                    child: Text('  60  % \n Django',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
                angle: 90,
                positionFactor: 0.5)
          ])
        ]));
  }
}

//HTML

class HtmlWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SfRadialGauge(
            enableLoadingAnimation: true,
            animationDuration: 4500,
            axes: <RadialAxis>[
          RadialAxis(minimum: 0, maximum: 150, ranges: <GaugeRange>[
            GaugeRange(
                startValue: 0,
                endValue: 50,
                color: Colors.green,
                startWidth: 10,
                endWidth: 10),
            GaugeRange(
                startValue: 50,
                endValue: 100,
                color: Colors.orange,
                startWidth: 10,
                endWidth: 10),
            GaugeRange(
                startValue: 100,
                endValue: 150,
                color: Colors.red,
                startWidth: 10,
                endWidth: 10)
          ], pointers: <GaugePointer>[
            NeedlePointer(value: 75, needleColor: Colors.white)
          ], annotations: <GaugeAnnotation>[
            GaugeAnnotation(
                widget: Container(
                    child: Text('  75  % \n HTML',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
                angle: 90,
                positionFactor: 0.5)
          ])
        ]));
  }
}

//c programming

class CWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SfRadialGauge(
            enableLoadingAnimation: true,
            animationDuration: 4500,
            axes: <RadialAxis>[
          RadialAxis(minimum: 0, maximum: 150, ranges: <GaugeRange>[
            GaugeRange(
                startValue: 0,
                endValue: 50,
                color: Colors.green,
                startWidth: 10,
                endWidth: 10),
            GaugeRange(
                startValue: 50,
                endValue: 100,
                color: Colors.orange,
                startWidth: 10,
                endWidth: 10),
            GaugeRange(
                startValue: 100,
                endValue: 150,
                color: Colors.red,
                startWidth: 10,
                endWidth: 10)
          ], pointers: <GaugePointer>[
            NeedlePointer(value: 70, needleColor: Colors.white)
          ], annotations: <GaugeAnnotation>[
            GaugeAnnotation(
                widget: Container(
                    child: Text('  70  % \n C Language',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
                angle: 90,
                positionFactor: 0.5)
          ])
        ]));
  }
}

//data analaytics

class DataanalyticWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SfRadialGauge(
            enableLoadingAnimation: true,
            animationDuration: 4500,
            axes: <RadialAxis>[
          RadialAxis(minimum: 0, maximum: 150, ranges: <GaugeRange>[
            GaugeRange(
                startValue: 0,
                endValue: 50,
                color: Colors.green,
                startWidth: 10,
                endWidth: 10),
            GaugeRange(
                startValue: 50,
                endValue: 100,
                color: Colors.orange,
                startWidth: 10,
                endWidth: 10),
            GaugeRange(
                startValue: 100,
                endValue: 150,
                color: Colors.red,
                startWidth: 10,
                endWidth: 10)
          ], pointers: <GaugePointer>[
            NeedlePointer(value: 60, needleColor: Colors.white)
          ], annotations: <GaugeAnnotation>[
            GaugeAnnotation(
                widget: Container(
                    child: Text('  60  % \n Data Analytic',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
                angle: 90,
                positionFactor: 0.5)
          ])
        ]));
  }
}
