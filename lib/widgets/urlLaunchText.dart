import 'package:flutter/material.dart';
import 'package:profile/constFiles/color.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLaunchText extends StatelessWidget {
  const UrlLaunchText({Key? key, required this.text, required this.url})
      : super(key: key);

  final String text;
  final String url;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => launch(url),
      child: Text(text,
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .merge(TextStyle(color: textColor2))),
    );
  }
}
