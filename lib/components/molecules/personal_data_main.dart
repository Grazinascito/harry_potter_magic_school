import 'package:flutter/material.dart';

import '../atoms/TextInfo.dart';

class PersonalDataMain extends StatelessWidget {
  PersonalDataMain({super.key, required this.data});
  final data;
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
      "wizard": (true).toString(),
      "ancestry": "half-blood",
      "eyeColour": "green",
      "hairColour": "black",
    }
  ];

  @override
  Widget build(BuildContext context) {
    var mockDataModified = data[0];

    for (var ele in mockDataModified) {
      print(ele);
    }

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ListTile(
        contentPadding: EdgeInsets.zero,
        minLeadingWidth: 10,
        title: const Text("Dados pessoais: ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        leading: Image.asset('./assets/images/personal_data_icon.png'),
      ),
      Column(
          children: title.map((t) {
        var index = title.indexOf(t);
        return TextInfo(
          title: t,
          subtitle: '',
        );
      }).toList())
    ]);
  }
}
