import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ChatWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: 50,
        height: 50,
        child: CachedNetworkImage(
          imageUrl:
              "https://images.pexels.com/photos/4329745/pexels-photo-4329745.jpeg",
          imageBuilder: (context, imageProvider) =>
              CircleAvatar(backgroundImage: imageProvider),
          progressIndicatorBuilder: (context, url, progress) => Center(
            child: CircularProgressIndicator(
              color: Colors.green,
              value: progress.progress,
              strokeWidth: 2,
            ),
          ),
        ),
      ),
      title: Text("Nombre de la persona"),
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 16,
      ),
      subtitle: Text("¿Hola cómo estas?"),
      trailing: Column(
        children: [
          Text("15:30", style: TextStyle(fontSize: 14)),
          Container(
            alignment: Alignment.center,
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
            child: Text("1", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
