import 'package:fit_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class FriendCircleAvatar extends StatelessWidget {
  const FriendCircleAvatar({
    Key? key,
    required this.username,
    required this.picUrl,
  }) : super(key: key);
  final String username;
  final String picUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(picUrl), fit: BoxFit.cover)),
        ),
        Text(
          username,
          style: TextStyle(
              fontSize: AppTheme.h4b.fontSize,
              color: Colors.black,
              fontWeight: FontWeight.w300),
        )
      ],
    );
  }
}
