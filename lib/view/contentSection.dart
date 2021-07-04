import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:profile/components/aboutSection.dart';
import 'package:profile/components/experienceSection.dart';
import 'package:profile/components/homeSection.dart';
import 'package:profile/constFiles/responsove.dart';

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
            SizedBox(height: 20.0),
            AboutSection(key: aboutKey),
            SizedBox(height: 20.0),
            ExperienceSection(key: experienceKey),
          ],
        ),
      ),
    );
  }
}
