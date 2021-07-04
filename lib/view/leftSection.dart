import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profile/constFiles/color.dart';
import 'package:profile/constFiles/constVariables.dart';
import 'package:profile/widgets/iconWidgetButton.dart';

class LeftSection extends StatelessWidget {
  const LeftSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 100,
      height: size(context).height <= 150 ? 0.0 : size(context).height,
      duration: Duration(seconds: 1),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconWidgetButton(icon: FontAwesomeIcons.github, onPress: () {}),
              IconWidgetButton(
                  icon: FontAwesomeIcons.instagram, onPress: () {}),
              IconWidgetButton(
                  icon: FontAwesomeIcons.linkedinIn, onPress: () {}),
              AnimatedContainer(
                color: iconColor,
                width: 1,
                height: size(context).height <= 250 ? 0 : 90,
                duration: Duration(seconds: 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
