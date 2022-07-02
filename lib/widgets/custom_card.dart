import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.width}) : super(key: key);
  final double width;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(),
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.only(left: 15),
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(Icons.circle_outlined),
            Row(
              children: const [Text('data'), Text('data2')],
            ),
            const Text('tipo de meta')
          ],
        ),
      ),
    );
  }
}
