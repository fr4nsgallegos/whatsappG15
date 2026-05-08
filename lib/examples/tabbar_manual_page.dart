import 'package:flutter/material.dart';

class TabbarManualPage extends StatefulWidget {
  const TabbarManualPage({super.key});

  @override
  State<TabbarManualPage> createState() => _TabbarManualPageState();
}

class _TabbarManualPageState extends State<TabbarManualPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(
      length: 3,
      //vsync ayuda al rendimiento, flutter necesita sincronizar animaciones.
      // Analogía-> es como el director de la orquesta que coordina todo
      vsync: this,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab bar manual Page"),
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(text: "Uno"),
            Tab(text: "Dos"),
            Tab(text: "tres"),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Center(child: Text("Uno")),
          Center(child: Text("Dos")),
          Center(child: Text("Tres")),
        ],
      ),
    );
  }
}
