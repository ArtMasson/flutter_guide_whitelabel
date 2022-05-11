import 'package:flutter/material.dart';

import '../models/item_model.dart';

class DefaultGuidePageWidget extends StatelessWidget {
  final String title;
  final String imageUrl;
  final List<ItemModel> content;

  const DefaultGuidePageWidget({
    required this.title,
    required this.imageUrl,
    required this.content,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(253, 253, 253, 1),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            title,
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 50,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (_, __) => const SizedBox(
                height: 10,
              ),
              itemCount: content.length,
              itemBuilder: (_, index) => _buildItemType(
                item: content[index],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildItemType({
    required ItemModel item,
  }) {
    switch (item.type) {
      case ContentType.text:
        return Text(
          item.content,
          textAlign: TextAlign.justify,
        );
      case ContentType.image:
        return Image.network(
          item.content,
        );
      default:
        return Text(
          item.content,
          textAlign: TextAlign.justify,
        );
    }
  }
}
