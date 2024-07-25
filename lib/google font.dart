import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

myStyal(double fs,[Color ?clr,FontWeight ?fw]) {
  return GoogleFonts.notoSans(
    fontSize: fs,
    color: clr,
    fontWeight: fw,
  );
}
Color primaryColor=Colors.blue;
Color secondaryColor=Colors.green;