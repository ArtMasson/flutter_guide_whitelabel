import 'package:flutter/material.dart';

class DefaultGuidePageWidget extends StatelessWidget {
  final String title;
  final String imageUrl;
  final List<String> description;

  const DefaultGuidePageWidget({
    required this.title,
    required this.imageUrl,
    required this.description,
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
          ),
          const SizedBox(
            height: 50,
          ),
          Expanded(
            child: ListView(
              children: description
                  .map(
                    (e) => Text(e),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
