import 'package:finexis/models/color_palette.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../navigationModule/bottom_navigation.dart';
import '../models/dummy.dart';

final Uri _url = Uri.parse('https://sso.agc.gov.sg/Act/SFA2001');
Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not reach $_url');
  }
}

class DisclaimerClass extends StatefulWidget {
  const DisclaimerClass({super.key});

  @override
  State<DisclaimerClass> createState() => _DisclaimerClassState();
}

class _DisclaimerClassState extends State<DisclaimerClass> {
  SharedPreferences? savePrefs;
  bool isChecking = false;

  Future<void> setCondition() async {
    final loaded = await SharedPreferences.getInstance();
    if (loaded.containsKey("accTemp")) {
      loaded.clear();
    }
    final bool accTemp = isChecking;
    loaded.setBool("accTemp", accTemp);
    setState(() {});
  }

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
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: accreditedBody),
                    TextSpan(
                        text: linkAccredited,
                        style: GoogleFonts.openSans(
                            color: Colors.blueAccent,
                            fontStyle: FontStyle.italic),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            _launchUrl();
                          }),
                  ],
                  style: GoogleFonts.openSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
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
                        setCondition();
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
                            // initState();
                            setState(() {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const BottomNavigationClass()));
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
