import 'package:finexis/models/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeNotLoginClass extends StatelessWidget {
  const HomeNotLoginClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.maxFinite,
          margin: const EdgeInsets.only(top: 320),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 235, 235, 235),
            borderRadius: const BorderRadius.vertical(
              top: Radius.elliptical(25, 25),
            ),
          ),
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Meranti",
                      style: GoogleFonts.openSans(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "FAM",
                      style: GoogleFonts.openSans(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
