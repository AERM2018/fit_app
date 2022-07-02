import 'package:flutter/material.dart';

class CardSlider extends StatelessWidget {
  const CardSlider(
      {Key? key,
      required this.items,
      required this.height,
      required this.title,
      this.action,
      this.paddingLabels,
      this.paddingList})
      : super(key: key);
  final List<Widget> items;
  final String title;
  final TextButton? action;
  final double height;
  final EdgeInsets? paddingLabels;
  final EdgeInsets? paddingList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Column(children: [
        Container(
          padding: paddingLabels ?? const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(title), action ?? const SizedBox()]),
        ),
        Expanded(
          child: Padding(
            padding: paddingList ?? const EdgeInsets.only(left: 20),
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: ((context, index) => items[index]),
                scrollDirection: Axis.horizontal),
          ),
        )
      ]),
    );
  }
}
