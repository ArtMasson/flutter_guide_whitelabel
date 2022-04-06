import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class GuidePage extends StatefulWidget {
  const GuidePage({
    Key? key,
  }) : super(key: key);

  @override
  State<GuidePage> createState() => _GuidePageState();
}

class _GuidePageState extends State<GuidePage> {
  int currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Modular.to.navigate('page1');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            Modular.to.navigate('page${index + 1}');
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.one_k,
            ),
            label: 'Page 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.two_k,
            ),
            label: 'Page 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.three_k,
            ),
            label: 'Page 3',
          ),
        ],
      ),
      body: const RouterOutlet(),
    );
  }
}
