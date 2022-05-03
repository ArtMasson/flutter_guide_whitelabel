class GuideModel {
  final String title;
  final String route;
  final List<String> description;

  bool selected = false;

  GuideModel({
    required this.title,
    required this.route,
    required this.description,
  });
}
