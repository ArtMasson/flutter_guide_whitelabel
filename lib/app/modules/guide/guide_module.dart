import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/consts/guides_route.dart';
import 'presentation/pages/guide_home/guide_home_controller.dart';
import 'presentation/pages/guide_home/guide_home_store.dart';

class GuideModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) => GuideHomeStore()),
        Bind.lazySingleton(
          (i) => GuideHomeController(
            store: i(),
          ),
        ),
      ];

  @override
  final List<ModularRoute> routes = guidesRoutes;
}
