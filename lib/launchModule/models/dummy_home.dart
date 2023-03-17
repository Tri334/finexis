import 'package:finexis/models/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var welcome = "Welcome";
var headdesc =
    "Get access to fund details and participate when you create an account with us today";
var strategy = "Our Strategies";

class TitleClass extends StatelessWidget {
  const TitleClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(welcome,
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: colorpalette.primary03)),
        const SizedBox(height: 8),
        Text(headdesc,
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: colorpalette.primary03)),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
              width: 125,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0, backgroundColor: colorpalette.primary03),
                onPressed: () {},
                child: Text(
                  "Sign in now",
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: colorpalette.primaryTeal),
                ),
              ),
            ),
            const SizedBox(width: 12),
            SizedBox(
              height: 50,
              width: 125,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: colorpalette.primaryTeal,
                    elevation: 0,
                    side: BorderSide(color: colorpalette.primary03)),
                onPressed: () {},
                child: Text(
                  "Login",
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: colorpalette.primary03),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Text(
          strategy,
          style: GoogleFonts.roboto(
              fontSize: 24,
              fontWeight: FontWeight.w300,
              color: colorpalette.primary03),
        )
      ],
    );
  }
}
