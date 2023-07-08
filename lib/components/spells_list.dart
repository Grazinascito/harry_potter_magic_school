import 'package:flutter/material.dart';

class SpellsList extends StatelessWidget {
  const SpellsList(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.isExpanded});

  final String title;
  final String subtitle;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
        animationDuration: const Duration(milliseconds: 300),
        children: [
          ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(title),
              );
            },
            body: ListTile(
              subtitle: Text(subtitle),
            ),
            isExpanded: true,
          ),
          ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return const ListTile(
                title: Text('Item 2'),
              );
            },
            body: const ListTile(
              title: Text('Item 2 child'),
              subtitle: Text('Details goes here'),
            ),
            isExpanded: false,
          ),
        ]);
  }
}
