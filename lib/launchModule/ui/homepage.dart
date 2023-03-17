import 'package:flutter/material.dart';

class HomepageClass extends StatelessWidget {
  const HomepageClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomepageUICLass(),
    );
  }
}

class HomepageUICLass extends StatelessWidget {
  const HomepageUICLass({super.key});

  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
        child: Stack(
          children: [
            Image.asset("images/Loading BG.png"),
            Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("images/logo_finexis.png", scale: 48,),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.mail_outline, size: 48,))
                ],
              )
            ],
          ),
          ]
        ),
      ),
    );
  }
}


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