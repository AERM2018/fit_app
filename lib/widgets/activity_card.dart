import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard(
      {Key? key, required this.workoutType, required this.imageUrl})
      : super(key: key);
  final String workoutType;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(),
      child: Container(
        width: 70,
        padding: const EdgeInsets.all(10),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image(
            image: AssetImage(imageUrl),
          ),
          Text(workoutType)
        ]),
      ),
    );
  }
}
