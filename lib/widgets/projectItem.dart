import 'package:flutter/material.dart';
import 'package:profile/constFiles/color.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({
    Key? key,
    required this.projectName,
    this.initialExpanded = true,
    required this.children,
  }) : super(key: key);

  final String projectName;
  final bool initialExpanded;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Row(
        children: [
          Icon(Icons.arrow_right, color: lightGreen),
          SizedBox(width: 10.0),
          Expanded(
            child: Text(projectName,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .merge(TextStyle(color: lightGreen))),
          ),
        ],
      ),
      initiallyExpanded: initialExpanded,
      children: children,
    );
  }
}