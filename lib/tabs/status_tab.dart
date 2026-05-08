import 'package:flutter/material.dart';

class StatusTab extends StatelessWidget {
  const StatusTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            padding: EdgeInsets.all(2),
            width: 58,
            height: 58,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey, width: 3),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: Image.network(
                "https://images.pexels.com/photos/17734004/pexels-photo-17734004.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            "Carlos",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          subtitle: Text("Ayer, 16:27", style: TextStyle(fontSize: 16)),
        ),
      ],
    );
  }
}
