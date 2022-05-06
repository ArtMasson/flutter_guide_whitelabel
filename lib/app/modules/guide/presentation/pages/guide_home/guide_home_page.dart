import 'package:flutter/material.dart';
import 'package:flutter_guide_whitelabel/app/modules/guide/presentation/pages/guide_home/guide_home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart' as get_x;

import '../../consts/guides_list.dart';
import '../../widgets/guide_app_bar_widget.dart';
import 'widgets/guide_drawer.dart';
import 'widgets/guide_sidebar_widget.dart';

class GuideHomePage extends StatefulWidget {
  const GuideHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<GuideHomePage> createState() => _GuideHomePageState();
}

class _GuideHomePageState
    extends ModularState<GuideHomePage, GuideHomeController> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    Modular.to.navigate('page1');
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      drawer: MediaQuery.of(context).size.width < 768
          ? get_x.Obx(
              () => GuideDrawerWidget(
                guides: guidesList,
                onTapGuide: controller.onTapGuide,
                selectedRoute: controller.store.selectedGuide?.route ?? '',
              ),
            )
          : null,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: GuideAppBarWidget(),
      ),
      body: Row(
        children: [
          if (MediaQuery.of(context).size.width > 768)
            get_x.Obx(
              () => GuideSidebarWidget(
                guides: guidesList,
                onTapGuide: controller.onTapGuide,
                selectedRoute: controller.store.selectedGuide?.route ?? '',
              ),
            ),
          Container(
            width: 1,
            color: theme.scaffoldBackgroundColor,
          ),
          const Expanded(child: RouterOutlet()),
        ],
      ),
    );
  }
}
