import 'dart:convert';

enum ContentType {
  text,
  code,
  image,
}

class ItemModel {
  final String id;
  final ContentType type;
  final String content;

  ItemModel({
    required this.id,
    required this.type,
    required this.content,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'type': type});
    result.addAll({'content': content});

    return result;
  }

  factory ItemModel.fromMap(Map<String, dynamic> map) {
    return ItemModel(
      id: map['id'] ?? '',
      type: map['type'] ?? '',
      content: map['content'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemModel.fromJson(String source) =>
      ItemModel.fromMap(json.decode(source));
}
