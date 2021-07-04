import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profile/constFiles/color.dart';

class IconWidgetButton extends StatelessWidget {
  const IconWidgetButton({Key? key, required this.icon, required this.onPress})
      : super(key: key);

  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: IconButton(
        icon: FaIcon(icon, color: iconColor, size: 22),
        onPressed: () => onPress,
      ),
    );
  }
}
