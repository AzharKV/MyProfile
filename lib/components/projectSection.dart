import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile/constFiles/color.dart';
import 'package:profile/widgets/expandingPoints.dart';
import 'package:profile/widgets/headingBar.dart';
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
          projectName: "Demo Shopping App",
          initialExpanded: false,
          children: [
            ExpandedPoints(
                haveIcon: false,
                text:
                    "Flutter FrameWork, Hive Database, GetX State Management"),
            Wrap(
              children: [
                Text("jhgkj"),
              ],
            ),
            InkWell(
              onTap: () => launch("https://github.com/AzharKV/Closho"),
              child: Text("Click Here For GitHub Link And To Learn More...",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .merge(TextStyle(color: textColor2))),
            ),
          ],
        ),
      ],
    );
  }
}
