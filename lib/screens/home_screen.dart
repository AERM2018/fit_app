import 'package:fit_app/screens/screens.dart';
import 'package:fit_app/widgets/botton_nav_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> screens = const [
    StatisticsScreen(),
    WorkOutScreen(),
    ProfileScreen()
  ];
  int _screenIndex = 0;
  void changeCurrentIndex(int index) {
    setState(() {
      _screenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[_screenIndex],
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.settings,
                  color: Colors.red,
                ),
              ),
            ]),
        bottomNavigationBar: BottomNavBar(
          changeCurrentIndex: changeCurrentIndex,
        ));
  }
}
