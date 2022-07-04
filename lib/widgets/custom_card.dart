import 'package:fit_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {Key? key,
      required this.width,
      required this.value1,
      required this.value2,
      required this.donoutColor,
      required this.goalType})
      : super(key: key);
  final double width;
  final double value1;
  final String value2;
  final Color donoutColor;
  final String goalType;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(),
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.only(left: 15),
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.circle_outlined,
              size: 15,
              color: donoutColor,
            ),
            Row(
              children: [
                Text(
                  '$value1 ',
                  style: AppTheme.h3b,
                ),
                Text(
                  value2,
                  style: AppTheme.h4b,
                )
              ],
            ),
            Text(goalType)
          ],
        ),
      ),
    );
  }
}
