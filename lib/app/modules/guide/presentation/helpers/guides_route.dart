import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../pages/guide_home/guide_home_page.dart';

final List<ModularRoute> guidesRoutes = [
  ChildRoute(
    '/',
    child: (context, args) => const GuideHomePage(),
    children: [
      ChildRoute(
        '/page1',
        child: (context, args) => Container(
          color: const Color.fromRGBO(253, 253, 253, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Guia 1'),
            ],
          ),
        ),
      ),
      ChildRoute(
        '/page2',
        child: (context, args) => Container(
          color: const Color.fromRGBO(253, 253, 253, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Guia 2'),
            ],
          ),
        ),
      ),
      ChildRoute(
        '/page3',
        child: (context, args) => Container(
          color: const Color.fromRGBO(253, 253, 253, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Guia 3'),
            ],
          ),
        ),
      ),
    ],
  ),
];
