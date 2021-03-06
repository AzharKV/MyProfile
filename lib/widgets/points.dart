import 'package:flutter/material.dart';
import 'package:profile/constFiles/color.dart';

class Points extends StatelessWidget {
  const Points({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.arrow_right, color: lightGreen),
          SizedBox(width: 10.0),
          Text(text,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .merge(TextStyle(color: textColor2)))
        ],
      ),
    );
  }
}
