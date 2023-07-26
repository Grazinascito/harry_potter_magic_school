import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//colors
const redDefault = Color(0xFFA71125);
const blackDefault = Color(0xFF313131);
const orangeDefault = Color(0xFFe2ab74);
const whiteDefault = Color(0xFFFFFFFF);
const blueDefault = Color(0xFF155C9B);
const grayDefault = Color(0xFFD3D3D3);
const whiteFloral = Color(0xFFFFFCF5);
const greenDefault = Color(0xFF05541C);
const yellowDefault = Color(0xFFF2B903);
const gradientColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    
    colors: [whiteDefault, orangeDefault]);

//fonts

final openSansFont = GoogleFonts.openSansTextTheme();
final jollyLodgerFont =
    GoogleFonts.jollyLodger(fontSize: 10, color: blackDefault);
