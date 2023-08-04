import 'package:flutter/material.dart';
import 'package:harry_potter_app/global_style.dart';

import '../../components/molecules/content_header.dart';
import '../../components/organism/spells_list.dart';

class SpellsScreen extends StatelessWidget {
  const SpellsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteDefault,
        body: Column(
          children: [
            ContentHeader(
              headerTitle: "Feitiços",
              headerSubtitle:
                  "Os feitiços que estão aqui serão aprendidos durante os sete anos em Hogwarts.",
            ),
            const SpellsList(),
          ],
        ));
  }
}
