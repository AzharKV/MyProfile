import 'package:flutter/material.dart';
import 'package:profile/constFiles/color.dart';

class ExpandedPoints extends StatelessWidget {
  const ExpandedPoints({Key? key, required this.text, this.haveIcon = true})
      : super(key: key);

  final String text;
  final bool haveIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (haveIcon) ...[
            Icon(Icons.arrow_right, color: lightGreen),
            SizedBox(width: 10.0),
          ],
          Expanded(
            child: Text(text,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .merge(TextStyle(color: textColor2))),
          )
        ],
      ),
    );
  }
}
