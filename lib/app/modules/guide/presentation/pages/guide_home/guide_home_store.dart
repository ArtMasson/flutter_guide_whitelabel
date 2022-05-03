import 'package:get/get.dart';

import '../../models/guide_model.dart';

class GuideHomeStore {
  final Rx<GuideModel?> _selectedGuide = Rx<GuideModel?>(null);
  GuideModel? get selectedGuide => _selectedGuide.value;
  set selectedGuide(GuideModel? value) => _selectedGuide.value = value;
}
