import 'package:finexis/launchModule/ui/homepage.dart';
import 'package:finexis/models/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/dummy.dart';

class DisclaimerClass extends StatefulWidget {
  DisclaimerClass({super.key});

  @override
  State<DisclaimerClass> createState() => _DisclaimerClassState();
}

class _DisclaimerClassState extends State<DisclaimerClass> {
  SharedPreferences? savePrefs;

  @override
  void initState() {
    super.initState();
    setDisclaimer();
  }

  Future <void> setDisclaimer() async {
    final savePrefs = await SharedPreferences.getInstance();
    savePrefs.setBool("acceptedTerm", isChecking);
  }

  Future <void> getDisclaimer() async {
    final savePrefs = await SharedPreferences.getInstance();
    bool checkTerm = savePrefs.containsKey("acceptedTerm");
    if (checkTerm == true){
      runApp(BottomNavigationClass());
    }
  }

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
                    onChanged: (cleared) {
                      setState(() {
                        isChecking = cleared!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      checkBoxText,
                      style: GoogleFonts.roboto(
                          fontSize: 16, fontWeight: FontWeight.w700),
                    ),
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
                    onPressed: isChecking
                        ? () {
                            setState(() {
                              runApp(const BottomNavigationClass());
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (BuildContext context) =>
                              //         const WelcomeClass()));
                            });
                          }
                        : null,
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

