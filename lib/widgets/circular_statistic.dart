import 'package:fit_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CircularStatistic extends StatelessWidget {
  const CircularStatistic({
    Key? key,
    required this.statistic,
    required this.value,
  }) : super(key: key);
  final String statistic;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            value,
            style: const TextStyle(
                color: AppTheme.primary, fontWeight: FontWeight.w500),
          ),
          Text(
            statistic,
            style: TextStyle(
                fontSize: AppTheme.h4b.fontSize! - 5,
                fontWeight: AppTheme.h4b.fontWeight),
          ),
        ],
      ),
    );
  }
}
