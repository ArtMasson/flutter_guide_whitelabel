import 'package:flutter_modular/flutter_modular.dart';

import '../pages/guide_home/guide_home_page.dart';
import '../widgets/default_guide_page_widget.dart';
import 'guides_list.dart';

final List<ModularRoute> guidesRoutes = [
  ChildRoute(
    '/',
    child: (context, args) => const GuideHomePage(),
    children: _getGuideRoutes(),
  ),
];

List<ChildRoute> _getGuideRoutes() {
  return guidesList
      .map(
        (guide) => ChildRoute(
          '/${guide.route}',
          child: (context, args) => DefaultGuidePageWidget(
            title: guide.title,
            imageUrl: '',
            content: guide.content,
          ),
        ),
      )
      .toList();
}
