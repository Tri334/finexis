import 'package:finexis/models/color_palette.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../models/dummy_home.dart';

class HomepageUICLass extends StatelessWidget {
  const HomepageUICLass({super.key});

  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/Loading BG.png"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "images/logo_finexis.png",
                    scale: 54,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mail_outline,
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              TitleClass()
            ],
          ),
        ),
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
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/Loading BG.png"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Color.fromARGB(0, 0, 0, 0),
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

// Scaffold(
//           body: navList.elementAt(nowPage),
//           bottomNavigationBar: FloatingNavbar(
//             items: [
//               FloatingNavbarItem(icon: Icons.home, title: 'Home'),
//               FloatingNavbarItem(
//                   icon: Icons.folder_open_outlined, title: 'Portfolio'),
//               FloatingNavbarItem(
//                   icon: Icons.receipt_long_outlined, title: 'Orders'),
//               FloatingNavbarItem(icon: Icons.person_outline, title: 'Profile'),
//             ],
//             currentIndex: nowPage,
//             onTap: changePage,
//             backgroundColor: colorpalette.primary03,
//             unselectedItemColor: colorpalette.secondary06,
//             selectedItemColor: colorpalette.primaryTeal,
//           ),
//         ),

// Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Image.asset("images/logo_finexis.png", scale: 48,),
//                   IconButton(onPressed: (){}, icon: const Icon(Icons.mail_outline, size: 48,))
//                 ],
//               )
//             ],
//           ),
