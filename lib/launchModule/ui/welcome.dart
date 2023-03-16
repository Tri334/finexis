import 'package:finexis/launchModule/models/dummy.dart';
import 'package:finexis/models/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeClass extends StatefulWidget {
  const WelcomeClass({super.key});

  @override
  State<WelcomeClass> createState() => _WelcomeClassState();
}

class _WelcomeClassState extends State<WelcomeClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorpalette.primary03,
      appBar: AppBar(
        iconTheme: IconThemeData(color: colorpalette.secondary05),
        backgroundColor: colorpalette.primary03,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              "images/logo_finexis1.png",
              height: 150,
              width: 150,
            ),
            const SizedBox(height: 15),
            Text(
              nameApp,
              textAlign: TextAlign.center,
              style:
                  GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 300,
              child: Text(
                descApp,
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(height: 56),
            SizedBox(
              width: 325,
              height: 65,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: colorpalette.primaryTeal),
                onPressed: () {},
                child: Text(
                  "Login",
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: 325,
              height: 65,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: colorpalette.primary03),
                onPressed: () {},
                child: Text(
                  "Sign Up",
                  style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: colorpalette.primaryTeal),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
