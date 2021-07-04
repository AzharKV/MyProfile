import 'package:flutter/material.dart';
import 'package:profile/constFiles/color.dart';
import 'package:profile/constFiles/constVariables.dart';

class HeadingBar extends StatelessWidget {
  const HeadingBar({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text,
            style: Theme.of(context)
                .textTheme
                .headline5!
                .merge(TextStyle(color: textColor3))),
        SizedBox(width: 10.0),
        Container(height: 1, width: size(context).width / 5, color: lineColor),
      ],
    );
  }
}
