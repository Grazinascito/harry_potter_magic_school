import 'package:flutter/material.dart';
import 'package:harry_potter_app/screens/hogwarts_screen/hogwarts_screen.dart';
import '../../global_style.dart';
import '../screens/spells_screen/spells_screen.dart';

class ContentCard extends StatelessWidget {
  const ContentCard(
      {super.key,
      required this.titleCard,
      required this.subText,
      required this.icon,
      required this.image,
      required this.buttonRedirect});

  final String titleCard;
  final String subText;
  final String icon;
  final String image;
  final String buttonRedirect;

  Widget get showContentBasedOnClick {
    if (buttonRedirect == "spells") {
      return const SpellsScreen();
    } else {
      return const HogwartsScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(.2),
          blurRadius: 25.0, // soften the shadow
          spreadRadius: 0.0, //extend the shadow
        )
      ]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Card(
              color: whiteDefault,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset(
                        image,
                        width: 100,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 220,
                          child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: Image.asset(icon),
                            title: Text(
                              titleCard,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 220,
                          child: Text(
                            subText,
                            style: const TextStyle(fontSize: 17),
                          ),
                        ),
                        const SizedBox(height: 13),
                        SizedBox(
                          height: 34,
                          child: ElevatedButton(
                              onPressed: () => {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                showContentBasedOnClick))
                                  },
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(220, 0),
                                  backgroundColor: redDefault,
                                  foregroundColor: whiteDefault,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4))),
                              child: const DefaultTextStyle(
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                child: Text(
                                  "Acessar",
                                  textAlign: TextAlign.center,
                                ),
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
