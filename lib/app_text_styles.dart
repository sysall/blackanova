import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static BlackanovaStyles blackanova = BlackanovaStyles();
  static Title title = Title();
}

class Title {
  TextStyle headTitle = const TextStyle(
    color: Colors.white,
    fontSize: 34,
    fontWeight: FontWeight.bold,
  );

  TextStyle bottomTitle = const TextStyle(
    color: Colors.grey,
    fontSize: 15,
  );

  TextStyle nameButtonTitle = const TextStyle(
    color: Colors.black87,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  TextStyle subTitle = const TextStyle(
      fontSize: 28, fontWeight: FontWeight.w500, color: Colors.white);
}

class BlackanovaStyles {
  TextStyle alegreyaFieldTitle = GoogleFonts.alegreya(
      textStyle: const TextStyle(
    fontSize: 15,
    wordSpacing: 1,
    letterSpacing: 1.2,
    fontWeight: FontWeight.bold,
    color: Colors.grey,
  ));

  TextStyle alegreyaSubTitle = GoogleFonts.alegreya(
      textStyle: const TextStyle(
    fontSize: 20.0,
    wordSpacing: 1,
    letterSpacing: 1.2,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ));

  TextStyle alegreyaTitle = GoogleFonts.alegreya(
      textStyle: const TextStyle(
    fontSize: 50.0,
    wordSpacing: 1,
    letterSpacing: 1.2,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ));

  TextStyle alegreyaTitleButton = GoogleFonts.alegreya(
      textStyle: const TextStyle(
        fontSize: 30.0,
        wordSpacing: 1,
        letterSpacing: 1.2,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ));


  TextStyle alegreya = GoogleFonts.alegreya(
      textStyle: const TextStyle(
    fontSize: 25.0,
    wordSpacing: 1,
    letterSpacing: 1.2,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ));

  TextStyle alegreyaDescription = GoogleFonts.alegreya(
    textStyle: const TextStyle(
      fontSize: 18.0,
      color: Colors.black,
      letterSpacing: 0.7,
      height: 1.5,
    ),
  );
}
