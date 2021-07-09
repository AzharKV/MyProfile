import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile/constFiles/color.dart';
import 'package:profile/widgets/expandingPoints.dart';
import 'package:profile/widgets/headingBar.dart';
import 'package:profile/widgets/customNetworkImage.dart';
import 'package:profile/widgets/projectItem.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        HeadingBar(text: "Recent Project."),
        SizedBox(height: 20.0),
        ProjectItem(
          projectName:
              "Accounts And Staff Management Flutter Mobile Application",
          children: [
            ExpandedPoints(
                haveIcon: false,
                text:
                    "Adding, Editing, Deleting, Preview In PDF Format of Business Sales, Stock, Purchase & Quotation."),
            ExpandedPoints(
                haveIcon: false,
                text:
                    "Firebase Firestore For Data Storing. Firebase Storage For File Storing."),
            ExpandedPoints(
                haveIcon: false,
                text:
                    "Add Multiple Client Per Account. Separate Section For Staff Documents Storing."),
            ExpandedPoints(
                haveIcon: false,
                text:
                    "Razorpay Payment For Client Payments. Google SigIn For Client Verification."),
          ],
        ),
        ProjectItem(
          projectName: "Shopping Cart App",
          initialExpanded: false,
          children: [
            ExpandedPoints(
                haveIcon: false,
                text:
                    "Flutter FrameWork, Hive Database, GetX State Management, MVC Architecture"),
            InkWell(
              onTap: () => launch("https://github.com/AzharKV/Closho"),
              child: Text("Click Here For GitHub Link And To Learn More...",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .merge(TextStyle(color: textColor2))),
            ),
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                CustomNetworkImage(
                    url:
                        "https://github.com/AzharKV/Closho/blob/master/screenshot/20210703_213537.gif?raw=true"),
                CustomNetworkImage(
                    url:
                        "https://github.com/AzharKV/Closho/blob/master/screenshot/20210703_213417.gif?raw=true"),
                CustomNetworkImage(
                    url:
                        "https://github.com/AzharKV/Closho/blob/master/screenshot/20210703_213644.gif?raw=true"),
              ]
                  .map((e) => Padding(
                        padding: EdgeInsets.all(10),
                        child: e,
                      ))
                  .toList(),
            ),
          ],
        ),
        ProjectItem(
          projectName: "Cash Manager App",
          initialExpanded: false,
          children: [
            ExpandedPoints(
                haveIcon: false,
                text:
                    "Flutter FrameWork, SQFlite Database, Provider State Management, MVC Architecture"),
            InkWell(
              onTap: () => launch("https://github.com/AzharKV/Money_Manager"),
              child: Text("Click Here For GitHub Link And To Learn More...",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .merge(TextStyle(color: textColor2))),
            ),
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                CustomNetworkImage(
                    url:
                        "https://github.com/AzharKV/Money_Manager/blob/master/screenshot/20210702_154652.gif?raw=true"),
                CustomNetworkImage(
                    url:
                        "https://github.com/AzharKV/Money_Manager/blob/master/screenshot/20210702_155007.gif?raw=true"),
                CustomNetworkImage(
                    url:
                        "https://github.com/AzharKV/Money_Manager/blob/master/screenshot/20210702_155204.gif?raw=true"),
              ]
                  .map((e) => Padding(
                        padding: EdgeInsets.all(10),
                        child: e,
                      ))
                  .toList(),
            ),
          ],
        ),
        ProjectItem(
          projectName: "Flutter Web NewsWorld App",
          initialExpanded: false,
          children: [
            ExpandedPoints(
                haveIcon: false,
                text:
                    "Flutter FrameWork, NewsApi.org Api, GetX State Management, MVC Architecture"),
            InkWell(
              onTap: () => launch("https://github.com/AzharKV/NewsWorld"),
              child: Text("Click Here For GitHub Link And To Learn More...",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .merge(TextStyle(color: textColor2))),
            ),
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                CustomNetworkImage(
                    url:
                        "https://github.com/AzharKV/NewsWorld/blob/master/screenshot/desktopView.gif?raw=true"),
                CustomNetworkImage(
                    url:
                        "https://github.com/AzharKV/NewsWorld/blob/master/screenshot/mobileView.gif?raw=true"),
                CustomNetworkImage(
                    url:
                        "https://github.com/AzharKV/NewsWorld/blob/master/screenshot/tabletView.png?raw=true"),
              ]
                  .map((e) => Padding(
                        padding: EdgeInsets.all(10),
                        child: e,
                      ))
                  .toList(),
            ),
          ],
        ),
        ProjectItem(
          projectName: "Flutter Web DashBoard App",
          initialExpanded: false,
          children: [
            ExpandedPoints(
                haveIcon: false,
                text: "Flutter Responsive Web, Tablet, Mobile Dashboard UI."),
            InkWell(
              onTap: () =>
                  launch("https://github.com/AzharKV/Responsive_DashBoard"),
              child: Text("Click Here For GitHub Link And To Learn More...",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .merge(TextStyle(color: textColor2))),
            ),
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                CustomNetworkImage(
                    url:
                        "https://github.com/AzharKV/Responsive_DashBoard/blob/master/screenshot/desktopView.png?raw=true"),
                CustomNetworkImage(
                    url:
                        "https://github.com/AzharKV/Responsive_DashBoard/blob/master/screenshot/mobileView.gif?raw=true"),
                CustomNetworkImage(
                    url:
                        "https://github.com/AzharKV/Responsive_DashBoard/blob/master/screenshot/tabletView.png?raw=true"),
              ]
                  .map((e) => Padding(
                        padding: EdgeInsets.all(10),
                        child: e,
                      ))
                  .toList(),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: InkWell(
            onTap: () => launch("https://github.com/AzharKV"),
            child: Text("Click Here For More Personal Project Details",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .merge(TextStyle(color: textColor2))),
          ),
        ),
      ],
    );
  }
}
