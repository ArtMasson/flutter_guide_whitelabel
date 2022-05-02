import 'package:flutter_modular/flutter_modular.dart';

import 'guide_home_store.dart';
import 'models/guide_model.dart';

class GuideHomeController {
  final GuideHomeStore store;

  GuideHomeController({
    required this.store,
  });

  void onTapGuide({
    required GuideModel guide,
  }) {
    store.selectedGuide = guide;
    Modular.to.navigate(guide.route);
  }
}
