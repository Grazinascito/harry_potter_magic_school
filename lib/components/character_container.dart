import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harry_potter_app/global_style.dart';
import 'package:harry_potter_app/model/character_house.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

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

  final List characterInfo = ['Gryffindor'];

  Future<void> getHouses() async {
    var url = Uri.https(
        'hp-api.onrender.com', '/api/characters/house/${widget.house}');
    var response = await http.get(url);

    var jsonResponse = convert.jsonDecode(response.body);

    for (var eachCharacter in jsonResponse) {
      final characterHourse = CharacterHouse(
          id: eachCharacter['id'],
          house: eachCharacter['house'],
          name: eachCharacter['name'],
          image: eachCharacter['image']);

      if (characterInfo.length < 6) {
        print(characterHourse.house);
        characterInfo.add(characterHourse);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _future,
      builder: (context, snapshot) {
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
              Container(
                width: double.infinity,
                height: 300,
                color: greenDefault,
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 20,
                  crossAxisCount: 3,
                  children: List.generate(6, (index) => const CharacterCard()),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class CharacterCard extends StatelessWidget {
  const CharacterCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: whiteDefault,
      child: Padding(
        padding: const EdgeInsets.all(9),
        child: SizedBox(
          height: 500,
          child: Column(children: [
            ClipOval(
                child: SizedBox.fromSize(
                    size: const Size.fromRadius(25),
                    child: Image.asset('assets/images/spells.png',
                        fit: BoxFit.cover))),
            const Text(
              'Harry Potter',
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
              softWrap: true,
              maxLines: 2,
            )
          ]),
        ),
      ),
    );
  }
}
