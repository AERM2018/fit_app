import 'package:circle_list/circle_list.dart';
import 'package:fit_app/models/models.dart';
import 'package:fit_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CurvedContainer extends StatelessWidget {
  const CurvedContainer(
      {Key? key,
      required this.height,
      this.textTopContainer,
      this.textSecondaryContainer,
      required this.distanceToFirstContainer})
      : super(key: key);
  final double height;
  final double distanceToFirstContainer;
  final Widget? textTopContainer;
  final Widget? textSecondaryContainer;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
            clipper: CurveClipper(),
            child: Container(
                height: height + distanceToFirstContainer,
                decoration: const BoxDecoration(
                  color: Colors.white60,
                ),
                child: const Center(
                  child: Text('data'),
                ))),
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
        Positioned(
            top: 40,
            left: 20,
            width: MediaQuery.of(context).size.width - 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textTopContainer ?? const SizedBox(),
                const Icon(Icons.settings, color: AppTheme.primary)
              ],
            )),
        Positioned(
            top: 70,
            left: 20,
            child: textSecondaryContainer ?? const SizedBox()),

        // ClipPath(
        //     clipper: CurveClipper(),
        //     child: Container(
        //         height: height + 50,
        //         decoration: const BoxDecoration(
        //           color: Colors.red,
        //         ),
        //         child: const Center(
        //           child: Text('data'),
        //         )))
      ],
    );
  }
}
