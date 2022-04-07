import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/pages/guide_home/guide_home_page.dart';

class GuideModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (context, args) => const GuideHomePage(),
      children: [
        ChildRoute(
          '/page1',
          child: (context, args) => Container(
            color: const Color.fromRGBO(253, 253, 253, 1),
          ),
        ),
        ChildRoute(
          '/page2',
          child: (context, args) => Container(
            color: const Color.fromRGBO(253, 253, 253, 1),
          ),
        ),
        ChildRoute(
          '/page3',
          child: (context, args) => Container(
            color: const Color.fromRGBO(253, 253, 253, 1),
          ),
        ),
      ],
    ),
  ];
}
