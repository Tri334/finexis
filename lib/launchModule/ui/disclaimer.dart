import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/dummy.dart';

class DisclaimerClass extends StatefulWidget {
  const DisclaimerClass({super.key});

  @override
  State<DisclaimerClass> createState() => _DisclaimerClassState();
}

class _DisclaimerClassState extends State<DisclaimerClass> {
  @override
  Widget build(BuildContext context) {
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
                    value: false,
                    onChanged: (value) {
                      setState(() {
                        value = true;
                      });
                    },
                  ),
                  Text(
                    checkBoxText,
                    style: GoogleFonts.roboto(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  )
                ],
              ) // Text(data)
              // const SizedBox(height: 16),
              // const Dummy02(),
              // const SizedBox(height: 16),
              // const Dummy03(),
              // const SizedBox(height: 16),
              // const Dummy04(),
            ],
          ),
        ),
      ),
    );
  }
}
