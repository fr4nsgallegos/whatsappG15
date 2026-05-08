import 'package:flutter/material.dart';

// TabBar es un widget que crea pestañas horizontales

class TabbarPage extends StatelessWidget {
  const TabbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar Page"),
          bottom: TabBar(
            tabs: [
              Tab(text: "chats"),
              Tab(text: "estados"),
              Tab(text: "llamadas"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Pantalla chats")),
            Center(child: Text("Pantalla Estados")),
            Center(child: Text("Pantalla Llamadas")),
          ],
        ),
      ),
    );
  }
}
