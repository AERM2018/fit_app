import 'package:flutter/material.dart';

class Goal {
  Goal(
      {required this.value1,
      required this.value2,
      required this.donoutColor,
      required this.type});

  final double value1;
  final String value2;
  final Color donoutColor;
  final String type;

  static List<Goal> mockGoals() {
    return [
      Goal(
          value1: 76,
          value2: 'kg',
          type: 'Weight goal',
          donoutColor: Colors.purple),
      Goal(
          value1: 2000,
          value2: 'steps',
          type: 'Activity goal',
          donoutColor: Colors.blue),
      Goal(
          value1: 15,
          value2: 'km',
          type: 'Activity goal',
          donoutColor: Colors.blue),
      Goal(
          value1: 76,
          value2: 'kg',
          type: 'Weight goal',
          donoutColor: Colors.purple),
      Goal(
          value1: 2000,
          value2: 'steps',
          type: 'Activity goal',
          donoutColor: Colors.blue),
      Goal(
          value1: 15,
          value2: 'km',
          type: 'Activity goal',
          donoutColor: Colors.blue),
    ];
  }
}
