import 'package:flutter/material.dart';

import '../../models/guide_model.dart';
import 'guide_tile_widget.dart';

class GuideTileListWidget extends StatelessWidget {
  final List<GuideModel> guides;
  final void Function({required GuideModel guide}) onTapGuide;
  final String selectedRoute;

  const GuideTileListWidget({
    required this.guides,
    required this.onTapGuide,
    required this.selectedRoute,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ListView(
        children: guides
            .map(
              (guide) => GuideTileWidget(
                guide: guide,
                onTapGuide: onTapGuide,
                selectedRoute: selectedRoute,
              ),
            )
            .toList(),
      ),
    );
  }
}
