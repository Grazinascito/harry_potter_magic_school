import 'package:flutter/material.dart';
import 'package:harry_potter_app/model/spells.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class SpellsList extends StatefulWidget {
  const SpellsList({
    super.key,
  });

  @override
  State<SpellsList> createState() => _SpellsListState();
}

class _SpellsListState extends State<SpellsList> {
  //https://hp-api.onrender.com/api/spells - api
  late Future<void> _future;
  @override
  void initState() {
    super.initState();
    _future = getSpells();
  }

  List<Spell> spells = [];

  Future<void> getSpells() async {
    var url = Uri.https('hp-api.onrender.com', 'api/spells');
    var response = await http.get(url);
    var jsonResponse = convert.jsonDecode(response.body);

    for (var eachSpell in jsonResponse) {
      final spell = Spell(
          id: eachSpell['id'],
          name: eachSpell['name'],
          description: eachSpell['description']);
      if (spells.length <= 20) {
        spells.add(spell);
      } else {
        return print("ok");
      }
    }

    print(spells.length);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
                itemCount: spells.length,
                itemBuilder: (context, index) {
                  return ExpansionPanelList(
                      expansionCallback: (int index, bool isExpanded) {
                        setState(() {
                          spells[index].isExpanded = !isExpanded;
                        });
                      },
                      animationDuration: const Duration(milliseconds: 300),
                      children: spells.map<ExpansionPanel>((Spell spell) {
                        return ExpansionPanel(
                          headerBuilder:
                              (BuildContext context, bool isExpanded) {
                            return ListTile(
                              title: Text(spell.name),
                            );
                          },
                          body: ListTile(
                            subtitle: Text(spell.description),
                          ),
                          isExpanded: spell.isExpanded,
                        );
                      }).toList());
                });
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
