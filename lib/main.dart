import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsappg15/examples/tabbar_dinamico_page.dart';
import 'package:whatsappg15/examples/tabbar_manual_page.dart';
import 'package:whatsappg15/examples/tabbar_page.dart';
import 'package:whatsappg15/pages/home_page.dart';

// Ejemplo de fuente remota de manera general
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

// Ejemplo de fuente local de manera general
// void main() {
//   runApp(
//     MaterialApp(
//       theme: ThemeData(fontFamily: "Playwrite"),
//       home: HomePage(),
//       debugShowCheckedModeBanner: false,
//     ),
//   );
// }
