import 'package:fit_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class BasicStatistics extends StatelessWidget {
  const BasicStatistics({
    Key? key,
  }) : super(key: key);
  final h1 = AppTheme.h1w;
  final h3 = AppTheme.h3w;
  final h4 = AppTheme.h4w;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('7235', style: h1),
              const SizedBox(
                width: 5,
              ),
              Text('steps', style: h4)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text('2.3', style: h3),
                  const SizedBox(
                    width: 5,
                  ),
                  Text('km', style: h4)
                ],
              ),
              const SizedBox(
                width: 15,
              ),
              Row(
                children: [
                  Text('87', style: h3),
                  const SizedBox(
                    width: 5,
                  ),
                  Text('ccal', style: h4)
                ],
              )
            ],
          )
        ],
      )
    ]);
  }
}
