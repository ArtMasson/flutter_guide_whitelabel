import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'widgets/guide_drawer.dart';
import 'widgets/guide_sidebar_widget.dart';

class GuideHomePage extends StatefulWidget {
  const GuideHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<GuideHomePage> createState() => _GuideHomePageState();
}

class _GuideHomePageState extends State<GuideHomePage> {
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
          ? const GuideDrawerWidget()
          : null,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        shadowColor: Colors.white70,
        toolbarHeight: 50,
        backgroundColor: theme.colorScheme.background,
        title: const Text(
          'Flutter SDK',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
      body: Row(
        children: [
          if (MediaQuery.of(context).size.width > 768)
            const GuideSidebarWidget(),
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
