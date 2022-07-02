import 'package:fit_app/models/models.dart';
import 'package:fit_app/theme/app_theme.dart';
import 'package:fit_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  final TextStyle h3 = AppTheme.h3w;
  final TextStyle h4 = AppTheme.h4w;
  @override
  Widget build(BuildContext context) {
    final List<Friend> friends = Friend.mockFriends();
    final List<Goal> goals = Goal.mockGoals();
    return Column(
      children: [
        Stack(
          children: [
            // Profile name
            CurvedContainer(
              height: 230,
              textTopContainer: Text(
                'Emilia Jhonson!',
                style: h3,
              ),
              textSecondaryContainer: Text(
                'Baltimore sprinter',
                style: h4,
              ),
            ),
            // Profile pic
            Positioned(
              top: 120,
              left: (MediaQuery.of(context).size.width / 2) - 50,
              child: const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
            ),
          ],
        ),
        // Friends list
        CardSlider(
          items: friends
              .map((friend) => Container(
                    margin: const EdgeInsets.only(right: 15),
                    child: FriendCircleAvatar(
                      picUrl: friend.picUrl,
                      username: friend.username,
                    ),
                  ))
              .toList(),
          height: 130,
          title: 'Friends',
          action: TextButton(
            onPressed: (() {}),
            child: const Text('Rating friends'),
          ),
        ),
        CardSlider(
            title: 'Daily goals',
            action:
                TextButton(onPressed: () {}, child: const Text('Open list ')),
            items: goals
                .map((goal) => const CustomCard(
                      width: 160,
                    ))
                .toList(),
            height: 180),
        const LastActivityCard()
      ],
    );
  }
}
