import 'package:flutter/material.dart';

class TextInfo extends StatelessWidget {
  const TextInfo({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: RichText(
          text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
            TextSpan(
                text: '$title: ',
                style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: subtitle)
          ])),
    );
  }
}
