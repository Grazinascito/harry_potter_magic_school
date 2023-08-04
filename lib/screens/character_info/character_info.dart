import 'package:flutter/material.dart';
import 'package:harry_potter_app/components/molecules/personal_data_footer.dart';
import '../../components/molecules/personal_data_header.dart';
import '../../components/molecules/personal_data_main.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import '../../models/character_info.dart';

const gradientHeader = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color.fromARGB(180, 167, 17, 37), Color(0xFFFFFCF5)]);

class CharacterInfo extends StatefulWidget {
  const CharacterInfo({super.key, required this.id});

  final String id;

  @override
  State<CharacterInfo> createState() => _CharacterInfoState();
}

class _CharacterInfoState extends State<CharacterInfo> {
  late Future<void> _info;

  @override
  void initState() {
    super.initState();
    _info = getCharacterInfo();
  }

  final List info = [];

  getCharacterInfo() async {
    var url = Uri.https('hp-api.onrender.com', '/api/character/${widget.id}');
    var response = await http.get(url);

    var jsonResponse = convert.jsonDecode(response.body);

    for (var eachInfo in jsonResponse) {
      final personalInfo = Info(
        id: eachInfo['id'],
        name: eachInfo['name'],
      );
    }

    info.add(jsonResponse);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfef9f0),
      body: Column(children: [
        const PersonalDataHeader(),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: FutureBuilder(
            future: _info,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else {
                return Column(
                  children: [
                    PersonalDataMain(data: info),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(),
                    const PersonalDataFooter()
                  ],
                );
              }
            },
          ),
        ),
      ]),
    );
  }
}
