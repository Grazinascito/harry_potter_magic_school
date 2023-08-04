import 'package:flutter/material.dart';
import '../../components/molecules/personal_data_header.dart';
import '../../components/molecules/personal_data_main.dart';

const gradientHeader = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color.fromARGB(180, 167, 17, 37), Color(0xFFFFFCF5)]);

class CharacterInfo extends StatelessWidget {
  const CharacterInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfef9f0),
      body: Column(children: [const PersonalDataHeader(), PersonalDataMain()]),
    );
  }
}
