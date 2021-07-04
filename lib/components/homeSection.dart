import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile/constFiles/color.dart';
import 'package:profile/constFiles/responsove.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Hi, my name is",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .merge(TextStyle(color: lightGreen))),
        SizedBox(height: 20.0),
        Container(
          width: Responsive.isMobile(context)
              ? size.width / 1
              : Responsive.isTablet(context)
                  ? size.width / 2
                  : size.width / 2.25,
          child: AutoSizeText(
            "Mohammed Azhar.",
            style: Theme.of(context).textTheme.headline2!.merge(
                TextStyle(color: textColor3, fontWeight: FontWeight.bold)),
            maxLines: 1,
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 15.0),
          width: Responsive.isDesktop(context)
              ? size.width / 1.5
              : size.width / 1.25,
          child: AutoSizeText(
            "I build things for the web & mobile.",
            style: Theme.of(context).textTheme.headline2!.merge(
                TextStyle(color: textColor2, fontWeight: FontWeight.bold)),
            maxLines: 1,
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 50.0),
          width: Responsive.isDesktop(context)
              ? size.width / 2
              : Responsive.isTablet(context)
                  ? size.width / 1.5
                  : size.width / 1,
          child: AutoSizeText.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text:
                          "I'm a flutter developer who specializes in building (and occasionally designing)"
                          " exceptional digital experiences. Currently, I'm a developer at "),
                  TextSpan(
                      text: "Utech Solutions",
                      style: TextStyle(color: lightGreen)),
                  TextSpan(
                      text: " focused on "
                          "building accessible, human-centred products."),
                ],
              ),
              textAlign: TextAlign.justify,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .merge(TextStyle(color: textColor2))),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 18.0),
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.rectangle,
              border: Border.all(color: lightGreen, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Text("Get  In  Touch",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .merge(TextStyle(color: lightGreen))),
        )
      ],
    );
  }
}
