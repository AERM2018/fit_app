import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key, required this.changeCurrentIndex})
      : super(key: key);
  final Function changeCurrentIndex;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _screenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _screenIndex,
      onTap: (int index) {
        widget.changeCurrentIndex(index);
        _screenIndex = index;
        setState(() {});
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.auto_graph_rounded),
          label: '',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.punch_clock_sharp), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: '')
      ],
    );
  }
}
