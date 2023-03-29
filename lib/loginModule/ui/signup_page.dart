import 'package:finexis/models/color_palette.dart';
import 'package:finexis/models/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded,
              color: colorpalette.secondary05),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Tell us more about you", style: fontComponent.roboto16w500),
            const SizedBox(height: 40),
            SizedBox(
              width: screenWidth - 25,
              height: 35,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: colorpalette.primaryTeal,
                    elevation: 0,
                    side:
                        BorderSide(width: 0.5, color: colorpalette.primary02)),
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const FamClient(),
                    ));
                  });
                },
                child: Text(
                  "I am a FAM Client",
                  style: fontComponent.roboto16w300,
                ),
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(
              width: screenWidth - 25,
              height: 35,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: colorpalette.primary03,
                      elevation: 0,
                      side: BorderSide(
                          width: 0.5, color: colorpalette.primaryTeal)),
                  onPressed: () {},
                  child: Text(
                    "I am new to FAM",
                    style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: colorpalette.primaryTeal),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class FamClient extends StatelessWidget {
  const FamClient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
