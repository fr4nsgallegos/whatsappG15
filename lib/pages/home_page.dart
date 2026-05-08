import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff1D3D2C),
          foregroundColor: Colors.white,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
          title: Text(
            "WhatsApp",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            indicatorWeight: 4,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "Chats"),
              Tab(text: "Status"),
              Tab(text: "Calls"),
            ],
          ),
        ),
      ),
    );
  }
}
