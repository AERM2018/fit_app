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
          Stack(
            children: [
              const CurvedContainer(
                height: 350,
                distanceToFirstContainer: 50,
              ),
              Positioned(
                  top: 80,
                  left: MediaQuery.of(context).size.width / 2 - 90,
                  child: const BasicStatistics())
            ],
          ),
          CardSlider(
              title: 'Daily goals',
              action:
                  TextButton(onPressed: () {}, child: const Text('Open list ')),
              items: goals
                  .map((goal) => CustomCard(
                        value1: goal.value1,
                        value2: goal.value2,
                        donoutColor: goal.donoutColor,
                        goalType: goal.type,
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
