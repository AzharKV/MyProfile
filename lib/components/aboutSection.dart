import 'package:flutter/material.dart';
import 'package:profile/constFiles/color.dart';
import 'package:profile/constFiles/constVariables.dart';
import 'package:profile/constFiles/responsove.dart';
import 'package:profile/widgets/expandingPoints.dart';
import 'package:profile/widgets/headingBar.dart';
import 'package:profile/widgets/points.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        HeadingBar(text: "About me."),
        SizedBox(height: 20.0),
        Center(
          child: Container(
            padding: EdgeInsets.only(bottom: 15.0),
            width: Responsive.isDesktop(context)
                ? size(context).width / 1.5
                : size(context).width / 1.15,
            child: Text(
                "Hello! My name is Mohammed Azhar, and I enjoy creating things that live on the internet. "
                "I'm a passionate developer who builds mobile, web, desktop applications using the Flutter cross-platform framework.",
                textAlign: TextAlign.justify,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .merge(TextStyle(color: textColor2))),
          ),
        ),
        Text("Here Are A Few Frameworks I've been working with:-",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .merge(TextStyle(color: textColor2))),
        Wrap(alignment: WrapAlignment.start, children: [
          Points(
            text: "Flutter",
          ),
          Points(text: "Android ( Java )"),
          Points(text: "Web ( HTML, CSS, JavaScript )")
        ]),
        Text("Here Are A Few Skills & Technologies:-",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .merge(TextStyle(color: textColor2))),
        Wrap(alignment: WrapAlignment.start, children: [
          Points(text: "Adobe Xd"),
          Points(text: "Flare Animation ( Rive )"),
          Points(text: "FireBase"),
          Points(text: "Local DataBase: SQFlite, Hive"),
        ]),
        SizedBox(height: 20.0),
        HeadingBar(text: "Education."),
        Wrap(
          alignment: WrapAlignment.start,
          children: [
            ExpandedPoints(
                text:
                    "Bachelor Of Computer Application ( 2017 - 2020 ), Calicut University"),
            ExpandedPoints(
                text:
                    "Business Analysis Certification Program (IIBA - ECBA) ( Udemy )"),
            ExpandedPoints(text: "Flutter Development Online Course"),
          ],
        ),
      ],
    );
  }
}
