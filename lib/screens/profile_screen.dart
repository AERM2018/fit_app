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
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              // Profile name
              CurvedContainer(
                height: 210,
                distanceToFirstContainer: 100,
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
                top: 100,
                left: (MediaQuery.of(context).size.width / 2) - 50,
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
              ),
              const Positioned(
                  top: 200,
                  left: 20,
                  child: CircularStatistic(
                      statistic: 'Total steps', value: '497,354')),
              Positioned(
                  top: 220,
                  left: (MediaQuery.of(context).size.width / 2) - 45,
                  child: const CircularStatistic(
                      statistic: 'Avergae steps', value: '2,988')),
              const Positioned(
                  top: 200,
                  right: 20,
                  child: CircularStatistic(
                      statistic: 'Calories burned', value: '7,359')),
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
                  .map((goal) => CustomCard(
                        value1: goal.value1,
                        value2: goal.value2,
                        donoutColor: goal.donoutColor,
                        goalType: goal.type,
                        width: 160,
                      ))
                  .toList(),
              height: 180),
          const DeviceCard()
        ],
      ),
    );
  }
}
