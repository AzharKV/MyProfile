import 'package:flutter/material.dart';
import 'package:profile/view/contentSection.dart';
import 'package:profile/view/leftSection.dart';
import 'package:profile/constFiles/responsove.dart';
import 'package:profile/view/rightSection.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   actions: [
      //     TextButton(onPressed: () {}, child: Text("Home")),
      //     TextButton(onPressed: () {}, child: Text("About")),
      //     TextButton(onPressed: () {}, child: Text("Experience")),
      //     TextButton(onPressed: () {}, child: Text("Work")),
      //     TextButton(onPressed: () {}, child: Text("Contact")),
      //   ],
      // ),
      body: SafeArea(
        child: Row(
          children: [
            if (!Responsive.isMobile(context)) LeftSection(),
            Expanded(child: ContentSection()),
            if (!Responsive.isMobile(context)) RightSection(),
          ],
        ),
      ),
    );
  }
}
