import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../components/content_card.dart';
import '../../global_style.dart';

class ContentScreen extends StatelessWidget {
  ContentScreen({super.key});
  final titleScreen = GoogleFonts.jollyLodger(
    fontSize: 32,
    color: blackDefault,
  );
  final screenTextStyle = GoogleFonts.openSans(
      fontSize: 20, color: blackDefault, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteFloral,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/header.png',
                width: double.infinity,
                fit: BoxFit.cover,
                height: 260,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 50, 24, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: const Alignment(-1.09, 0.0),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        constraints:
                            const BoxConstraints(minWidth: 0, maxWidth: 60),
                        icon: const Icon(Icons.chevron_left),
                        iconSize: 40,
                        onPressed: () => {Navigator.pop(context)},
                      ),
                    ),
                    Text("Conteúdos", style: titleScreen),
                    Text(
                      "Você pode conhecer seus colegas e também conhecer previamente alguns feitiços.",
                      style: screenTextStyle,
                    )
                  ],
                ),
              )
            ],
          ),
          const ContentCard(
              titleCard: "Alunos e professores",
              subText:
                  "Aqui estão todos os alunos,  professores e criaturas que você encontrará na escola.",
              image: "assets/images/students_teachers.png",
              icon: "assets/images/pointed_hat.png"),
          const ContentCard(
              titleCard: "Feitiços",
              subText:
                  "Aqui estão os principais feitiços que serão aprendidos na escola.",
              image: "assets/images/spells.png",
              icon: "assets/images/magic_wand.png"),
        ],
      ),
    );
  }
}
