import 'dart:convert';

import 'item_model.dart';

class GuideModel {
  final String title;
  final String titleImage;
  final String route;
  final List<ItemModel> content;

  bool selected = false;

  GuideModel({
    required this.title,
    required this.route,
    required this.content,
    this.titleImage = '',
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'title': title});
    result.addAll({'route': route});
    result.addAll({'description': content.map((x) => x.toMap()).toList()});
    result.addAll({'selected': selected});

    return result;
  }

  factory GuideModel.fromMap(Map<String, dynamic> map) {
    return GuideModel(
      title: map['title'] ?? '',
      route: map['route'] ?? '',
      content: List<ItemModel>.from(
          map['description']?.map((x) => ItemModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory GuideModel.fromJson(String source) =>
      GuideModel.fromMap(json.decode(source));
}
