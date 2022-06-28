import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.abc),
          label: '',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.abc), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.abc), label: '')
      ]),
    );
  }
}
