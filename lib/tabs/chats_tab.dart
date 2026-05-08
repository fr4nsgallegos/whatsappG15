import 'package:flutter/material.dart';
import 'package:whatsappg15/widgets/chat_widget.dart';

class ChatsTab extends StatelessWidget {
  const ChatsTab({super.key});

  // ESTO ES UNA FUNCIÓN
  // ListTile _buildChatListile() {
  //   return ListTile(
  //     leading: CircleAvatar(
  //       backgroundColor: Colors.red,
  //       radius: 28,
  //       backgroundImage: NetworkImage(
  //         "https://images.pexels.com/photos/4329745/pexels-photo-4329745.jpeg",
  //       ),
  //     ),
  //     title: Text("Nombre de la persona"),
  //     titleTextStyle: TextStyle(
  //       fontWeight: FontWeight.bold,
  //       color: Colors.black,
  //       fontSize: 16,
  //     ),
  //     subtitle: Text("¿Hola cómo estas?"),
  //     trailing: Column(
  //       children: [
  //         Text("15:30", style: TextStyle(fontSize: 14)),
  //         Container(
  //           alignment: Alignment.center,
  //           width: 25,
  //           height: 25,
  //           decoration: BoxDecoration(
  //             color: Colors.green,
  //             shape: BoxShape.circle,
  //           ),
  //           child: Text("1", style: TextStyle(color: Colors.white)),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChatWidget(),
        ChatWidget(),
        ChatWidget(),
        ChatWidget(),
        ChatWidget(),
        ChatWidget(),
        ChatWidget(),
        ChatWidget(),
        ChatWidget(),
      ],
    );
  }
}
