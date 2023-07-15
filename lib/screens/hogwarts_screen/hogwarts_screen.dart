import 'package:flutter/material.dart';
import '../../components/character_container.dart';
import '../../components/content_header.dart';

class HogwartsScreen extends StatefulWidget {
  const HogwartsScreen({super.key});

  @override
  State<HogwartsScreen> createState() => _HogwartsScreenState();
}

class _HogwartsScreenState extends State<HogwartsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: whiteDefault,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContentHeader(
              headerTitle: "Alunos e professores",
              headerSubtitle:
                  "Esses são os alunos, professores e criaturas que você irá encontrar estudando aqui em Hogwarts.",
            ),
            const CharacterContainer(house: 'gryffindor'),
            const CharacterContainer(house: 'hufflepuff'),
          ],
        ),
      ),
    );
  }
}
