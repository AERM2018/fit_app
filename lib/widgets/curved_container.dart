import 'package:fit_app/models/models.dart';
import 'package:flutter/material.dart';

class CurvedContainer extends StatelessWidget {
  const CurvedContainer({Key? key, required this.height}) : super(key: key);
  final double height;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
            clipper: CurveClipper(),
            child: Container(
                height: height,
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: const Center(
                  child: Text('data'),
                ))),
        ClipPath(
            clipper: CurveClipper(),
            child: Container(
                height: height + 50,
                decoration: const BoxDecoration(
                  color: Colors.black12,
                ),
                child: const Center(
                  child: Text('data'),
                )))
      ],
    );
  }
}
