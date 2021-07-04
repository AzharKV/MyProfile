import 'package:flutter/material.dart';
import 'package:profile/constFiles/color.dart';
import 'package:profile/constFiles/constVariables.dart';
import 'package:url_launcher/url_launcher.dart';

class RightSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 100,
      height: size(context).height <= 250 ? 0.0 : size(context).height,
      duration: Duration(seconds: 1),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RotatedBox(
                  quarterTurns: 1,
                  child: InkWell(
                    onTap: () async => await launch(
                        'https://mailto:mohammedazharkv@gmail.com'),
                    child: Text("mohammedazharkv@gmail.com",
                        style: TextStyle(color: iconColor)),
                  )),
              SizedBox(height: 8.0),
              AnimatedContainer(
                color: iconColor,
                width: 1,
                height: size(context).height <= 350 ? 0 : 90,
                duration: Duration(seconds: 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
