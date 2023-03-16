import 'package:finexis/launchModule/ui/welcome.dart';
import 'package:finexis/models/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/dummy.dart';

class DisclaimerClass extends StatefulWidget {
  const DisclaimerClass({super.key});

  @override
  State<DisclaimerClass> createState() => _DisclaimerClassState();
}

class _DisclaimerClassState extends State<DisclaimerClass> {
  bool isChecking = false;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Disclaimer",
                textAlign: TextAlign.left,
                style: GoogleFonts.roboto(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32),
              Text(
                readHead,
                style: GoogleFonts.roboto(
                    fontSize: 16, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 16),
              Text(
                readBody,
                style: GoogleFonts.roboto(
                    fontSize: 16, fontWeight: FontWeight.w300),
              ),
              const SizedBox(height: 16),
              Text(
                accreditedHead,
                style: GoogleFonts.roboto(
                    fontSize: 20, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 16),
              Text(
                accreditedBody,
                style: GoogleFonts.roboto(
                    fontSize: 16, fontWeight: FontWeight.w300),
              ),
              const SizedBox(height: 16),
              Text(
                informationHead,
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                informationBody,
                style: GoogleFonts.roboto(
                    fontSize: 16, fontWeight: FontWeight.w300),
              ),
              const SizedBox(height: 32),
              Text(
                "Conditions of Use",
                style: GoogleFonts.roboto(
                    fontSize: 20, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Checkbox(
                    value: isChecking,
                    onChanged: (isChecked) {
                      setState(() {
                        isChecking == isChecked;
                      });
                    },
                  ),
                  Text(
                    checkBoxText,
                    style: GoogleFonts.roboto(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              const SizedBox(height: 48),
              SizedBox(
                width: screenWidth,
                height: 65,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: colorpalette.primaryTeal),
                    onPressed: () {
                      setState(() {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const WelcomeClass()));
                      });
                    },
                    child: Text(
                      "Accept & Continue",
                      style: GoogleFonts.roboto(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
