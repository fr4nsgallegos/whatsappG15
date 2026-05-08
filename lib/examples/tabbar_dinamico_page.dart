import 'package:flutter/material.dart';

class TabbarDinamicoPage extends StatefulWidget {
  const TabbarDinamicoPage({super.key});

  @override
  State<TabbarDinamicoPage> createState() => _TabbarDinamicoPageState();
}

class _TabbarDinamicoPageState extends State<TabbarDinamicoPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  List<String> titulos = ["Noticias", "Mensajes", "Ajustes", "Perfil"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: titulos.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab bar dinámico"),
        bottom: TabBar(
          controller: tabController,
          tabs: titulos
              .map((elemento) => Center(child: Text(elemento)))
              .toList(),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: titulos
            .map((titulo) => Center(child: Text("Vista de $titulo")))
            .toList(),
      ),
    );
  }
}
