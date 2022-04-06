import 'package:flutter_guide_whitelabel/app/modules/guide/presentation/pages/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class GuideModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(
      '/',
      module: HomeModule(),
    ),
  ];
}
