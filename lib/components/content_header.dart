import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../global_style.dart';

class ContentHeader extends StatelessWidget {
  ContentHeader(
      {super.key, required this.headerTitle, required this.headerSubtitle});

  final String headerTitle;
  final String headerSubtitle;

  final titleScreen = GoogleFonts.jollyLodger(
    fontSize: 32,
    color: blackDefault,
  );
  final screenTextStyle = GoogleFonts.openSans(
      fontSize: 18, color: blackDefault, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/header.png",
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
                  constraints: const BoxConstraints(minWidth: 0, maxWidth: 60),
                  icon: const Icon(Icons.chevron_left),
                  iconSize: 40,
                  onPressed: () => {Navigator.pop(context)},
                ),
              ),
              Text(headerTitle, style: titleScreen),
              Text(
                headerSubtitle,
                style: screenTextStyle,
              )
            ],
          ),
        )
      ],
    );
  }
}
