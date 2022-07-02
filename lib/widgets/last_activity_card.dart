import 'package:fit_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class LastActivityCard extends StatelessWidget {
  const LastActivityCard({Key? key}) : super(key: key);
  @override
  final TextStyle h1 = AppTheme.h1b;
  final TextStyle h3 = AppTheme.h3b;
  final TextStyle h4 = AppTheme.h4w;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Last activity',
                      style: h4,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('See details'),
                    )
                  ]),
            ),
            Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.circle_outlined),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            child: Row(children: [
                              Text(
                                '2999',
                                style: h3,
                              ),
                              Text('km', style: h4)
                            ]),
                          ),
                          SizedBox(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text('2122', style: h3),
                                    Text('steps', style: h4)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Text('19', style: h3),
                                        Text('min', style: h4)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text('32', style: h3),
                                        Text('sec', style: h4)
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
