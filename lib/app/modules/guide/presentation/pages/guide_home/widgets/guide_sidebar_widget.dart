import 'package:flutter/material.dart';
import 'package:flutter_guide_whitelabel/app/modules/guide/presentation/pages/guide_home/models/guide_model.dart';
import 'package:flutter_guide_whitelabel/app/modules/guide/presentation/pages/guide_home/widgets/guide_list/guide_tile_list_widget.dart';

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
