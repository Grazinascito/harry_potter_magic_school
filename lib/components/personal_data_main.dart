import 'package:flutter/material.dart';

import 'atoms/TextInfo.dart';

class PersonalDataMain extends StatelessWidget {
  PersonalDataMain({super.key});
  final title = [
    'Nome',
    'Espécie',
    'Gênero',
    'Casa',
    'Ano de nascimento',
    'Bruxo',
    'Ancestralidade',
    'Cor dos olhos',
    'Cor do cabelo'
  ];
  final mockData = [
    {
      "name": "Harry Potter",
      "species": "human",
      "gender": "male",
      "house": "Gryffindor",
      "yearOfBirth": 1980,
      "wizard": true,
      "ancestry": "half-blood",
      "eyeColour": "green",
      "hairColour": "black",
    }
  ];

  @override
  Widget build(BuildContext context) {
    final mockDataModified = mockData[0].values.toList();

    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
      child: SizedBox(
        height: 300,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Align(
            alignment: const Alignment(0, 0),
            child: ListTile(
              minLeadingWidth: 20,
              title: const Text("Dados pessoais: ",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              leading: Image.asset('./assets/images/personal_data_icon.png'),
            ),
          ),
          Column(
            children: title.map((t) {
            var index = title.indexOf(t);
            return TextInfo(
              title: t,
              subtitle: '${mockDataModified[index]}',
            );
          }).toList())
        ]),
      ),
    );
  }
}
