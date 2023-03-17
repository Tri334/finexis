import 'package:flutter/material.dart';

import 'dummy_home.dart';

class HeadHomeClass extends StatelessWidget {
  const HeadHomeClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const SizedBox(height: 32),
            const TitleClass()
          ],
        ),
      ),
    );
  }
}
