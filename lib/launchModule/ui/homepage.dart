import 'package:finexis/models/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../loginModule/ui/login_page.dart';
import '../../loginModule/ui/signup_page.dart';
import '../../models/color_palette.dart';
import '../../navigationModule/tab_navigation.dart';
import '../models/dummy_home.dart';

class HomepageCLass extends StatelessWidget {
  const HomepageCLass({super.key});

  @override
  Widget build(BuildContext context) {
    // final _screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(color: Color(0xff004B49)),
      child: Stack(
        children: const [HomeHeader(), HomeContent()],
      ),
    );
  }
}

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 0, 0, 0),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "images/logo_finexis.png",
                  scale: 65,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.mail_outline,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const HomeTitle()
          ],
        ),
      ),
    );
  }
}

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(welcome,
            textAlign: TextAlign.left, style: fontComponent.roboto24w500),
        const SizedBox(height: 10),
        Text(headdesc,
            textAlign: TextAlign.left, style: fontComponent.roboto14w300),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
              width: 125,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0, backgroundColor: colorpalette.primary03),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const SignUp(),));
                },
                child: Text(
                  "Sign up now",
                  style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: colorpalette.primaryTeal),
                ),
              ),
            ),
            const SizedBox(width: 12),
            SizedBox(
              height: 40,
              width: 125,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff004B49),
                    elevation: 0,
                    side: BorderSide(color: colorpalette.primaryTeal)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const LoginClass(),
                  ));
                },
                child: Text(
                  "Login",
                  style: GoogleFonts.roboto(
                      fontSize: 15,
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
          style: GoogleFonts.openSans(
              fontSize: 24,
              fontWeight: FontWeight.w300,
              color: colorpalette.primary03),
        )
      ],
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.maxFinite,
          margin: const EdgeInsets.only(top: 270),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 235, 235, 235),
            borderRadius: BorderRadius.vertical(
              top: Radius.elliptical(25, 25),
            ),
          ),
          child: Stack(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: TabSwitcher(),
              ),
              // Padding(
              //   padding: EdgeInsets.only(top: 50.0),
              //   child: HomeToLogin(),
              // )
            ],
          ),
        ),
      ],
    );
  }
}

class HomeToLogin extends StatelessWidget {
  const HomeToLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: const BoxDecoration(
        color: Color.fromARGB(186, 235, 235, 235),
      ),
      child: Center(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Please ',
                style: GoogleFonts.openSans(
                    fontSize: 18, fontWeight: FontWeight.w300),
              ),
              WidgetSpan(
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const LoginClass(),
                  )),
                  child: Text(
                    "Sign in",
                    style: GoogleFonts.openSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Colors.blueAccent),
                  ),
                ),
              ),
              TextSpan(
                  text: " to access all features",
                  style: GoogleFonts.openSans(
                      fontSize: 18, fontWeight: FontWeight.w300))
            ],
          ),
        ),
      ),
    );
  }
}
