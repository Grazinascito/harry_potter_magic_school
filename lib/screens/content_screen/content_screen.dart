import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../components/molecules/access_card.dart';
import '../../components/molecules/content_header.dart';
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
      body: Column(children: [
        ContentHeader(
          headerTitle: "Conteúdos",
          headerSubtitle:
              "Você pode conhecer seus colegas e também conhecer previamente alguns feitiços.",
        ),
        const AccessCard(
            titleCard: "Alunos e professores",
            subText:
                "Aqui estão todos os alunos,  professores e criaturas que você encontrará na escola.",
            image: "assets/images/students_teachers.png",
            icon: "assets/images/pointed_hat.png",
            buttonRedirect: "content"
            ),
        const AccessCard(
            titleCard: "Feitiços",
            subText:
                "Aqui estão os principais feitiços que serão aprendidos na escola.",
            image: "assets/images/spells.png",
            icon: "assets/images/magic_wand.png", 
            buttonRedirect: "spells"
            
            ),
      ]),
    );
  }
}
