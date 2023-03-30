import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../launchModule/ui/homepage.dart';
import '../models/color_palette.dart';
import '../models/my_flutter_app_icons.dart';

class BottomNavigationClass extends StatefulWidget {
  const BottomNavigationClass({super.key});

  @override
  State<BottomNavigationClass> createState() => _BottomNavigationClassState();
}

class _BottomNavigationClassState extends State<BottomNavigationClass> {
  int nowPage = 0;

  final List<Widget> navList = [
    const HomepageCLass(),
    // const Text("Home"),
    const Text("Portfolio"),
    const Text("Orders"),
    const Text("Profile")
  ];

  void changePage(index) {
    setState(() {
      nowPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: const Color.fromARGB(255, 235, 235, 235),
        child: Scaffold(
          backgroundColor: const Color.fromARGB(0, 0, 0, 0),
          body: navList.elementAt(nowPage),
          bottomNavigationBar: FloatingNavbar(
            items: [
              FloatingNavbarItem(icon: MyFlutterApp.home, title: 'Home'),
              FloatingNavbarItem(
                  icon: MyFlutterApp.folder, title: 'Portfolio'),
              FloatingNavbarItem(
                  icon: Icons.receipt_long_outlined, title: 'Orders'),
              FloatingNavbarItem(icon: Icons.person_outline, title: 'Profile'),
            ],
            elevation: 0,
            borderRadius: 25,
            currentIndex: nowPage,
            onTap: changePage,
            backgroundColor: colorpalette.primary03,
            unselectedItemColor: colorpalette.secondary06,
            selectedItemColor: colorpalette.primaryTeal,
          ),
        ),
      ),
    );
  }
}
