import 'package:finexis/models/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../loginModule/ui/login_page.dart';

class HomeNotLoginClass extends StatelessWidget {
  const HomeNotLoginClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.maxFinite,
          margin: const EdgeInsets.only(top: 320),
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
                child: TabSwitcherClass(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: HyperlinkLoginClass(),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class TabSwitcherClass extends StatefulWidget {
  const TabSwitcherClass({super.key});

  @override
  State<TabSwitcherClass> createState() => _TabSwitcherClassState();
}

class _TabSwitcherClassState extends State<TabSwitcherClass>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
        unselectedLabelColor: colorpalette.secondary06,
        labelColor: colorpalette.primaryTeal,
        controller: tabController,
        indicatorColor: colorpalette.primaryTeal,
        indicatorSize: TabBarIndicatorSize.label,
        tabs: [
          Text(
            "Meranti",
            style:
                GoogleFonts.openSans(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Text(
            "FAM",
            style:
                GoogleFonts.openSans(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ]);
    // TabBarView(controller: tabController, children: [
    //   Text(
    //     "Meranti",
    //     style: GoogleFonts.openSans(fontSize: 20, fontWeight: FontWeight.w500),
    //   ),
    //   Text(
    //     "FAM",
    //     style: GoogleFonts.openSans(fontSize: 20, fontWeight: FontWeight.w500),
    //   ),
    //   Text(
    //     "Alternavt",
    //     style: GoogleFonts.openSans(fontSize: 20, fontWeight: FontWeight.w500),
    //   )
    // ]);
  }
}

class HyperlinkLoginClass extends StatelessWidget {
  const HyperlinkLoginClass({super.key});

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
