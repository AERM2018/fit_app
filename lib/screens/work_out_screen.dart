import 'package:fit_app/models/models.dart';
import 'package:flutter/material.dart';

class WorkOutScreen extends StatelessWidget {
  const WorkOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurveClipper(),
      child: Container(
        color: Colors.black,
        height: 200.0,
      ),
    );
  }
}
