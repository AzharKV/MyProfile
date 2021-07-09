import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:profile/components/aboutSection.dart';
import 'package:profile/components/educationSection.dart';
import 'package:profile/components/experienceSection.dart';
import 'package:profile/components/homeSection.dart';
import 'package:profile/components/projectSection.dart';
import 'package:profile/constFiles/color.dart';
import 'package:profile/constFiles/responsove.dart';
import 'package:profile/widgets/urlLaunchText.dart';

class ContentSection extends StatefulWidget {
  @override
  _ContentSectionState createState() => _ContentSectionState();
}

class _ContentSectionState extends State<ContentSection> {
  final GlobalKey homeKey = GlobalKey();
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey experienceKey = GlobalKey();
  final GlobalKey workKey = GlobalKey();

  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
            horizontal: Responsive.isMobile(context) ? 20.0 : 0.0),
        controller: scrollController,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeSection(key: homeKey, size: size),
            AboutSection(key: aboutKey),
            if (Responsive.isDesktop(context))
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: ExperienceSection(key: experienceKey)),
                  Expanded(child: EducationSection()),
                ],
              ),
            if (!Responsive.isDesktop(context)) ...[
              EducationSection(),
              ExperienceSection(key: experienceKey)
            ],
            ProjectSection(),
            Align(
              alignment: Alignment.center,
              child: Wrap(
                children: [
                  UrlLaunchText(
                      url: "https://github.com/AzharKV?tab=repositories",
                      text: "GitHub"),
                  SizedBox(width: 10.0),
                  UrlLaunchText(
                      url: "https://www.instagram.com/azhar__kv/",
                      text: "Instagram"),
                  SizedBox(width: 10.0),
                  UrlLaunchText(
                      url: "https://www.linkedin.com/in/azharkv",
                      text: "LinkedIn"),
                  SizedBox(width: 10.0),
                  UrlLaunchText(
                      url: "https://mailto:mohammedazharkv@gmail.com",
                      text: "G-Mail"),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text("ThankYou",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .merge(TextStyle(color: textColor2))),
            )
          ]
              .map((e) =>
                  Padding(padding: EdgeInsets.only(bottom: 20.0), child: e))
              .toList(),
        ),
      ),
    );
  }
}
