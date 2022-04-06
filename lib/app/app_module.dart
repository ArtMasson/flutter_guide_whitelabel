import 'package:flutter_guide_whitelabel/app/modules/guide/guide_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: GuideModule()),
  ];
}
