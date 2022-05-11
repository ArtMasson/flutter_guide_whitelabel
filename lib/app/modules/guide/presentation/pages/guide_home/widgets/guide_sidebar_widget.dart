import 'package:flutter/material.dart';

import '../../../models/guide_model.dart';
import 'guide_list/guide_tile_list_widget.dart';

class GuideSidebarWidget extends StatelessWidget {
  final List<GuideModel> guides;
  final void Function({required GuideModel guide}) onTapGuide;
  final String selectedRoute;

  const GuideSidebarWidget({
    required this.guides,
    required this.onTapGuide,
    required this.selectedRoute,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: GuideTileListWidget(
        guides: guides,
        onTapGuide: onTapGuide,
        selectedRoute: selectedRoute,
      ),
    );
  }
}
