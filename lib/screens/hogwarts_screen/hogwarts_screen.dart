import 'package:flutter/material.dart';
import '../../components/organism/character_container.dart';
import '../../components/molecules/content_header.dart';

class HogwartsScreen extends StatefulWidget {
  const HogwartsScreen({super.key});

  @override
  State<HogwartsScreen> createState() => _HogwartsScreenState();
}

class _HogwartsScreenState extends State<HogwartsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfef9f0),
      body: Column(
        children: [
          ContentHeader(
            headerTitle: "Alunos e professores",
            headerSubtitle:
                "Esses são os alunos, professores e criaturas que você irá encontrar estudando aqui em Hogwarts.",
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
              children: [
                CharacterContainer(house: 'gryffindor'),
                CharacterContainer(house: 'hufflepuff'),
                CharacterContainer(house: 'ravenclaw'),
                CharacterContainer(house: 'slytherin'),
              ],
            )),
          )
        ],
      ),
    );
  }
}
