import 'package:flutter/material.dart';
import 'package:whatsappg15/widgets/item_status_widget.dart';

class StatusTab extends StatelessWidget {
  const StatusTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Stack(
            children: [
              Container(
                padding: EdgeInsets.all(2),
                width: 58,
                height: 58,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Image.network(
                    "https://images.pexels.com/photos/17734004/pexels-photo-17734004.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Icon(Icons.add, color: Colors.white, size: 15),
                ),
              ),
            ],
          ),
          title: Text(
            "My status",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          width: double.infinity,
          child: Text(
            "Actualizaciones Recientes",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ),
        ItemStatusWidget(),
        ItemStatusWidget(),
        ItemStatusWidget(),
        ItemStatusWidget(),
        ItemStatusWidget(),
      ],
    );
  }
}
