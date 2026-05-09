import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CallItemListile extends StatelessWidget {
  const CallItemListile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: 50,
        width: 50,
        child: CachedNetworkImage(
          imageUrl:
              "https://images.pexels.com/photos/5684557/pexels-photo-5684557.jpeg",
          progressIndicatorBuilder: (context, url, progress) => Center(
            child: CircularProgressIndicator(
              color: Colors.green,
              value: progress.progress,
            ),
          ),
          imageBuilder: (context, imageProvider) =>
              CircleAvatar(backgroundImage: imageProvider, radius: 28),
        ),
      ),
      title: Text(
        "Juan Manuel",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          Icon(Icons.call_made, color: Colors.green),
          Text("Yesterday, 10:15"),
        ],
      ),
      trailing: Icon(Icons.call, color: Colors.green),
    );
  }
}
