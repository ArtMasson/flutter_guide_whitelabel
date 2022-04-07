import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class GuideSidebarWidget extends StatelessWidget {
  final Function? onTap;

  const GuideSidebarWidget({
    this.onTap,
    Key? key,
  }) : super(key: key);

  _closeDrawer() {
    if (onTap != null) {
      onTap!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        children: [
          ListTile(
            title: const Text('Flutter: Do Mobile a Web'),
            onTap: () {
              _closeDrawer();

              Modular.to.navigate('page1');
            },
          ),
          ListTile(
            title: const Text('Page 2'),
            onTap: () {
              _closeDrawer();
              Modular.to.navigate('page2');
            },
          ),
          ListTile(
            title: const Text('Page 3'),
            onTap: () {
              _closeDrawer();
              Modular.to.navigate('page3');
            },
          ),
        ],
      ),
    );
  }
}
