import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile/constFiles/color.dart';
import 'package:profile/widgets/expandingPoints.dart';
import 'package:profile/widgets/headingBar.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        HeadingBar(text: "Experience."),
        SizedBox(height: 20.0),
        Text("UmerTech Solutions ( January 2020 - Present )",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .merge(TextStyle(color: textColor2))),
        ExpandedPoints(
            text: "Flutter Development ( September 2020 - Present )."),
        ExpandedPoints(
            text: "Coordinating And Interacting With Client And Project Team."),
        ExpandedPoints(
            text: "Build Project Documents, WareFrames etc..."),
        ExpandedPoints(
            text: "Deploy And Managing Hosting, Server Side."),
        ExpandedPoints(
            text: "6 Month Experience In Android Development Using Java."),
      ],
    );
  }
}
