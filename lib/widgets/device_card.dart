import 'package:fit_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class DeviceCard extends StatelessWidget {
  const DeviceCard({Key? key}) : super(key: key);
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
                      'Devices',
                      style: h4,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Add device +'),
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            child: Image(
                              image: AssetImage('assets/miband.jpg'),
                              width: 100,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Mi band 6', style: AppTheme.h3b),
                                SizedBox(
                                  height: 15,
                                ),
                                Text('Device added 4 months ago.',
                                    style: AppTheme.h4b),
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
