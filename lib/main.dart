import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_demo/ui/constants.dart';
import 'package:nft_demo/ui/pages/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: primaryColor,
        fontFamily: "Nunito",
        textTheme: TextTheme(
            bodySmall: GoogleFonts.nunito(
              fontSize: 16,
              color: Colors.white,
            ),
          bodyMedium: GoogleFonts.nunito(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          bodyLarge: GoogleFonts.nunito(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            titleLarge: GoogleFonts.nunito(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            titleMedium: GoogleFonts.nunito(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            titleSmall: GoogleFonts.nunito(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          displayLarge: GoogleFonts.nunito(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: secondaryColor.withOpacity(0.5),
          ),
          displaySmall: GoogleFonts.nunito(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: secondaryColor.withOpacity(0.5),
          ),
        ),
      ),
      home: const LandingPage(),
    );
  }
}
