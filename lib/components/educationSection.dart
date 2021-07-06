import 'package:flutter/material.dart';
import 'package:profile/widgets/expandingPoints.dart';
import 'package:profile/widgets/headingBar.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
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
