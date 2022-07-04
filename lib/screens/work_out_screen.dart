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
        Stack(
          children: [
            const CurvedContainer(
              height: 300,
              distanceToFirstContainer: 50,
            ),
            Positioned(
              top: 120,
              left: MediaQuery.of(context).size.width / 2 - 80,
              child: Row(
                children: const [
                  Text(
                    '12.2',
                    style: AppTheme.h1w,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'km',
                    style: AppTheme.h4w,
                  ),
                ],
              ),
            )
          ],
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
