import 'package:flutter/material.dart';

import '../../../models/guide_model.dart';
import 'guide_sidebar_widget.dart';

class GuideDrawerWidget extends StatelessWidget {
  final List<GuideModel> guides;
  final void Function({required GuideModel guide}) onTapGuide;
  final String selectedRoute;

  const GuideDrawerWidget({
    required this.guides,
    required this.onTapGuide,
    required this.selectedRoute,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: GuideSidebarWidget(
        guides: guides,
        onTapGuide: onTapGuide,
        selectedRoute: selectedRoute,
      ),
    );
  }
}
