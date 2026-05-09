import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CameraTab extends StatelessWidget {
  const CameraTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Cameraaaa"),
        Text(
          "Texto con una fuente cargada desde local, asset font",
          style: TextStyle(fontFamily: "Playwrite", fontSize: 30),
        ),
        Text(
          "Texto con una fuente desde remoto, google font",
          style: GoogleFonts.jaro(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Text(
          "Texto con una fuente desde remoto, google font",
          style: GoogleFonts.lato(fontSize: 30, fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
