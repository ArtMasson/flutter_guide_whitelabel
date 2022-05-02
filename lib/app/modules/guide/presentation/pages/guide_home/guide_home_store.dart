import 'package:flutter_guide_whitelabel/app/modules/guide/presentation/pages/guide_home/models/guide_model.dart';
import 'package:get/get.dart';

class GuideHomeStore {
  final Rx<GuideModel?> _selectedGuide = Rx<GuideModel?>(null);
  GuideModel? get selectedGuide => _selectedGuide.value;
  set selectedGuide(GuideModel? value) => _selectedGuide.value = value;
}
