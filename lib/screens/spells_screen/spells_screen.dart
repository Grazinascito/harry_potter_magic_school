import 'package:flutter/material.dart';
import 'package:harry_potter_app/global_style.dart';

import '../../components/content_header.dart';
import '../../components/spells_list.dart';

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
            const SpellsList(
              title: "Avada Kedavra",
              subtitle:
                  "Also known as The Killing Curse, the most evil spell in the Wizarding World; one of three Unforgivable Curses; Harry Potter is the only known witch or wizard to survive it.",
              isExpanded: false,
            ),
          ],
        ));
  }
}