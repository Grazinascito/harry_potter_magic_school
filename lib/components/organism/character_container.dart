import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harry_potter_app/global_style.dart';
import 'package:harry_potter_app/models/character_house.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import '../molecules/character_card.dart';

final titleTextStyle = GoogleFonts.jollyLodger(
    fontSize: 28, color: blackDefault, fontWeight: FontWeight.w500);

class CharacterContainer extends StatefulWidget {
  const CharacterContainer({super.key, required this.house});
  final String house;
  @override
  State<CharacterContainer> createState() => _CharacterContainerState();
}

class _CharacterContainerState extends State<CharacterContainer> {
  late Future<void> _future;
  @override
  void initState() {
    super.initState();
    _future = getHouses();
  }

  final List characterInfos = [];

  Future<void> getHouses() async {
    var url = Uri.https(
        'hp-api.onrender.com', '/api/characters/house/${widget.house}');
    var response = await http.get(url);

    var jsonResponse = convert.jsonDecode(response.body);

    for (var eachCharacter in jsonResponse) {
      final characterHouse = CharacterHouse(
          id: eachCharacter['id'],
          house: eachCharacter['house'],
          name: eachCharacter['name'],
          image: eachCharacter['image']);

      if (characterInfos.length <= 6) {
        characterInfos.add(characterHouse);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator(
              backgroundColor: Colors.amber, color: Colors.amberAccent);
        }
        return Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.house,
                style: titleTextStyle,
                textAlign: TextAlign.left,
              ),
              SizedBox(
                width: double.infinity,
                height: 350,
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 60,
                      crossAxisSpacing: 20),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return CharacterCard(data: characterInfos, index: index);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
