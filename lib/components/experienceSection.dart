import 'package:flutter/material.dart';
import 'package:profile/widgets/headingBar.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        HeadingBar(text: "Experience."),
      ],
    );
  }
}
