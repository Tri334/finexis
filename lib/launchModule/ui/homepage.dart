import 'package:finexis/launchModule/models/head_homepage.dart';
import 'package:finexis/launchModule/models/home_container.dart';
import 'package:finexis/models/color_palette.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomepageUICLass extends StatelessWidget {
  const HomepageUICLass({super.key});

  @override
  Widget build(BuildContext context) {
    // final _screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(color: Color(0xff004B49)),
      child: Stack(
        children: const [HeadHomeClass(), HomeNotLoginClass()],
      ),
    );
  }
}

class BottomNavigationClass extends StatefulWidget {
  const BottomNavigationClass({super.key});

  @override
  State<BottomNavigationClass> createState() => _BottomNavigationClassState();
}

class _BottomNavigationClassState extends State<BottomNavigationClass> {
  int nowPage = 0;

  final List<Widget> navList = [
    const HomepageUICLass(),
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
              FloatingNavbarItem(icon: Icons.home, title: 'Home'),
              FloatingNavbarItem(
                  icon: Icons.folder_open_outlined, title: 'Portfolio'),
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
