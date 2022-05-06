import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          child: const Text('Conteúdos'),
          onPressed: () {
            Modular.to.navigate('/guide/page1');
          },
        ),
        ElevatedButton(
          child: const Text('Inserir conteúdo'),
          onPressed: () {
            Modular.to.navigate('/guide/new');
          },
        ),
      ],
    );
  }
}
