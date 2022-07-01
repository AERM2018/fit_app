import 'package:fit_app/models/models.dart';
import 'package:flutter/material.dart';

class CurvedContainer extends StatelessWidget {
  const CurvedContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
            clipper: CurveClipper(),
            child: Container(
                height: 300,
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: const Center(
                  child: Text('data'),
                ))),
        ClipPath(
            clipper: CurveClipper(),
            child: Container(
                height: 350,
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
