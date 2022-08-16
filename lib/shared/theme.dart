import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Color
Color kPrimary = Color(0xff13152D);
const Color kWhite = Colors.white;
Color kGrey = Color(0xffEFEFEF);
Color kBlue = Color(0xff006EE9);
Color kRed = Color(0xffFF0000);


// text
TextStyle blackTextStyle = GoogleFonts.poppins(
  color: kPrimary,
);
TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: kWhite,
);

// fontweight
FontWeight light = FontWeight.w100;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

// Category
const String underWeightSevere = "Underweight (Severe thinness)";
const String underWeightModerate = "Underweight (Moderate thinness)";
const String underWeightMild = "Underweight (Mild thinness)";
const String normal = "Normal";
const String overWeight = "Overweight";
const String obeseI = "Obese (Class I)";
const String obeseII = "Obese (Class II)";
const String obeseIII = "Obese (Class III)";
