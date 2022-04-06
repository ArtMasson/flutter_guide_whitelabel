import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'guide_page.dart';

class GuideModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (context, args) => const GuidePage(),
      children: [
        ChildRoute(
          '/page1',
          child: (context, args) => Container(
            color: Colors.red,
          ),
        ),
        ChildRoute(
          '/page2',
          child: (context, args) => Container(
            color: Colors.amber,
          ),
        ),
        ChildRoute(
          '/page3',
          child: (context, args) => Container(
            color: Colors.green,
          ),
        ),
      ],
    ),
  ];
}
