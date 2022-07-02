import 'package:fit_app/models/models.dart';
import 'package:fit_app/theme/app_theme.dart';
import 'package:fit_app/widgets/activity_card.dart';
import 'package:fit_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class WorkOutScreen extends StatelessWidget {
  const WorkOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Workout> workouts = Workout.mockWorkouts();
    return SingleChildScrollView(
      child: Column(children: [
        const CurvedContainer(
          height: 250,
        ),
        CardSlider(
          items: workouts
              .map((workout) => ActivityCard(
                  imageUrl: workout.imageUrl, workoutType: workout.type))
              .toList(),
          height: 180,
          title: 'Choose type of activity',
          paddingList: const EdgeInsets.symmetric(horizontal: 20),
        ),
        // Play button
        const PlayButton()
      ]),
    );
  }
}
