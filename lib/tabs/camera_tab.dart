import 'package:flutter/material.dart';

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
      ],
    );
  }
}
