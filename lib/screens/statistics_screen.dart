import 'package:fit_app/models/models.dart';
import 'package:fit_app/widgets/custom_card.dart';
import 'package:fit_app/widgets/last_activity_card.dart';
import 'package:fit_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<Goal> goals = Goal.mockGoals();
    return SingleChildScrollView(
      child: Column(
        children: [
          const CurvedContainer(
            height: 300,
          ),
          CardSlider(
              title: 'Daily goals',
              action:
                  TextButton(onPressed: () {}, child: const Text('Open list ')),
              items: goals
                  .map((goal) => const CustomCard(
                        width: 160,
                      ))
                  .toList(),
              height: 180),
          const LastActivityCard()
        ],
      ),
    );
  }
}
