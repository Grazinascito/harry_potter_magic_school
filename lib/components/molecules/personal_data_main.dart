import 'package:flutter/material.dart';

import '../atoms/TextInfo.dart';

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

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ListTile(
        minLeadingWidth: 10,
        title: const Text("Dados pessoais: ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        leading: Image.asset('./assets/images/personal_data_icon.png'),
      ),
      const Divider(),
      Padding(
        padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
        child: Column(
            children: title.map((t) {
          var index = title.indexOf(t);
          return TextInfo(
            title: t,
            subtitle: '${mockDataModified[index]}',
          );
        }).toList()),
      )
    ]);
  }
}
