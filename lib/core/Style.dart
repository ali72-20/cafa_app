import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
abstract class Style{
   static final style50 = GoogleFonts.pacifico(
     fontSize: 50,
     color: Colors.white
   );
   static final style18 = TextStyle(
       color: Colors.white.withOpacity(0.8),
       fontSize: 18,
       fontWeight: FontWeight.w500,
       letterSpacing: 1
   );

   static const style22 = TextStyle(
      color: Colors.white,
      fontSize: 22,
      fontWeight: FontWeight.bold,
      letterSpacing: 1
   );
   static const style30 = TextStyle(
       color: Colors.white,
       fontSize: 30,
       fontWeight: FontWeight.bold,
       letterSpacing: 1
   );
}