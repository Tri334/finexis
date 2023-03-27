// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:ui';

import 'package:finexis/models/color_palette.dart';
import 'package:google_fonts/google_fonts.dart';

class FontComponent {
  var roboto14w300,
      roboto14w500,
      roboto16w300,
      roboto16w500,
      roboto18w500,
      roboto24w300,
      roboto24w500;

  FontComponent({required this.roboto14w300, this.roboto14w500, this.roboto16w300, this.roboto16w500, this.roboto18w500, this.roboto24w300, this.roboto24w500});
}

var fontComponent = FontComponent(
  roboto14w300: GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w300, color: colorpalette.primary03),
  roboto14w500: GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w500),
  roboto16w300: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w300),
  roboto16w500: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500),
  roboto18w500: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.w500),
  roboto24w300: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w300),
  roboto24w500: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w500, color: colorpalette.primary03),
);
