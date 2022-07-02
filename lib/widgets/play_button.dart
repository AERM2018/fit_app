import 'package:fit_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      child: const Icon(
        Icons.play_circle_fill_outlined,
        size: 120,
        color: AppTheme.primary,
        shadows: [
          BoxShadow(
            blurRadius: 8,
            color: AppTheme.primary,
          ),
          BoxShadow(
            blurRadius: 12,
            color: Colors.black12,
            offset: Offset(0, 6.0),
          ),
        ],
      ),
    );
  }
}
