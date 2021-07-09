import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profile/constFiles/color.dart';
import 'package:profile/constFiles/constVariables.dart';
import 'package:profile/widgets/iconWidgetButton.dart';
import 'package:url_launcher/url_launcher.dart';

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
              IconWidgetButton(
                  icon: FontAwesomeIcons.github,
                  onPress: () =>
                      launch("https://github.com/AzharKV?tab=repositories")),
              IconWidgetButton(
                  icon: FontAwesomeIcons.instagram,
                  onPress: () =>
                      launch("https://www.instagram.com/azhar__kv/")),
              IconWidgetButton(
                  icon: FontAwesomeIcons.linkedinIn,
                  onPress: () => launch("https://www.linkedin.com/in/azharkv")),
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
