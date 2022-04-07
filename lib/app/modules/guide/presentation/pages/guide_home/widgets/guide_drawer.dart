import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'guide_sidebar_widget.dart';

class GuideDrawerWidget extends StatelessWidget {
  const GuideDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: GuideSidebarWidget(
        onTap: () => Modular.to.pop(),
      ),
    );
  }
}
