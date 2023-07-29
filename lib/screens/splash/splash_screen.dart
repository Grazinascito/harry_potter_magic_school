import 'package:google_fonts/google_fonts.dart';
import 'package:harry_potter_app/global_style.dart';
import 'package:flutter/material.dart';

import '../content_screen/content_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final screenTextStyle = GoogleFonts.jollyLodger(
    fontSize: 27,
    color: blackDefault,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: gradientColor,
        ),
        child: Column(children: [
          Image.asset('assets/images/home_header.png',
              width: double.infinity, fit: BoxFit.cover),
          Transform(
            transform: Matrix4.translationValues(0, -62, 0),
            child: Image.asset(
              'assets/images/card_icon.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: Column(
              children: [
                DefaultTextStyle(
                  style: screenTextStyle,
                  child: const Text(
                    "Prezado(a) aluno(a), Temos o prazer de informar que Vossa Senhoria tem uma vaga na Escola de Magia e Bruxaria de Hogwarts.",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                DefaultTextStyle(
                  style: screenTextStyle,
                  child: const Text(
                    "Aproveite esse tempo enquanto as aulas não começam para conhecer  os seus colegas e também alguns feitiços.",
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                DefaultTextStyle(
                  textAlign: TextAlign.left,
                  style: screenTextStyle,
                  child: const Text(
                    "Att, Escola de Magia e Bruxaria de Hogwarts",
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ContentScreen()))
                          },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        backgroundColor: redDefault,
                        foregroundColor: whiteDefault,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      child: const Text('Acessar conteúdo',
                          style: TextStyle(fontSize: 18))),
                )
              ],
            ),
          )
        ]));
  }
}
