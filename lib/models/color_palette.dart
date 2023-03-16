import 'package:flutter/material.dart';

class ColorPalette {
  Color primary01, primary02, primary03;
  Color secondary01,
      secondary02,
      secondary03,
      secondary04,
      secondary05,
      secondary06;

  ColorPalette({
    required this.primary01,
    required this.primary02,
    required this.primary03,
    required this.secondary01,
    required this.secondary02,
    required this.secondary03,
    required this.secondary04,
    required this.secondary05,
    required this.secondary06,
  });
}

var colorpalette = ColorPalette(
  primary01: const Color(0xff00374B),
  primary02: const Color(0xff49C5C2),
  primary03: const Color(0xfffcfffd),
  secondary01: const Color(0xffBA5624),
  secondary02: const Color(0xffBA5624),
  secondary03: const Color(0xfFEDDDCA),
  secondary04: const Color(0xFFDBDFE0),
  secondary05: const Color(0xff4e5180),
  secondary06: const Color(0xff001c3d),
);

class DecorationLanding {
  String img1, img2, img3;
  String map;
  DecorationLanding({
    required this.img1,
    required this.img2,
    required this.img3,
    required this.map,
  });
}

var decorImg = DecorationLanding(
  img1: 'assets/imgs/r1.png',
  img2: 'assets/imgs/r2.png',
  img3: 'assets/imgs/r3.png',
  map: 'assets/imgs/map.png',
);
Color getColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
    MaterialState.selected
  };
  if (states.any(interactiveStates.contains)) {
    return colorpalette.primary02;
  }
  return colorpalette.secondary05;
}
