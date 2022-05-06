import 'package:flutter/material.dart';

class GuideAppBarWidget extends StatelessWidget {
  const GuideAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      shadowColor: Colors.white70,
      toolbarHeight: 50,
      backgroundColor: Theme.of(context).colorScheme.background,
      title: const Text(
        'Flutter Guide',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }
}
