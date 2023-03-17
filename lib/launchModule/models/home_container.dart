import 'package:finexis/models/color_palette.dart';
import 'package:flutter/material.dart';

class HomeNotLoginClass extends StatelessWidget {
  const HomeNotLoginClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 300),
          decoration: BoxDecoration(
              color: colorpalette.secondary04,
              borderRadius:
                  BorderRadius.vertical(top: Radius.elliptical(25, 25))),
        ),
      ],
    );
  }
}
