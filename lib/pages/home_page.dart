import 'package:flutter/material.dart';
import 'package:whatsappg15/tabs/call_tab.dart';
import 'package:whatsappg15/tabs/camera_tab.dart';
import 'package:whatsappg15/tabs/chats_tab.dart';
import 'package:whatsappg15/tabs/status_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
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
        body: TabBarView(
          children: [CameraTab(), ChatsTab(), StatusTab(), CallTab()],
        ),
      ),
    );
  }
}
