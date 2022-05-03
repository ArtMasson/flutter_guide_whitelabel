import 'package:flutter/material.dart';

import '../../../../models/guide_model.dart';

class GuideTileWidget extends StatelessWidget {
  final GuideModel guide;
  final void Function({required GuideModel guide}) onTapGuide;
  final String selectedRoute;

  const GuideTileWidget({
    required this.guide,
    required this.onTapGuide,
    required this.selectedRoute,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: guide.route == selectedRoute ? const Color(0x0C0175C2) : null,
        borderRadius: const BorderRadius.horizontal(right: Radius.circular(50)),
      ),
      child: MaterialButton(
        minWidth: double.maxFinite,
        onPressed: () {
          onTapGuide(guide: guide);
        },
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            guide.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Color(0xFF0175C2),
            ),
          ),
        ),
      ),
    );
  }
}
