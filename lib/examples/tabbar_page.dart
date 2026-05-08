import 'package:flutter/material.dart';

// TabBar es un widget que crea pestañas horizontales

class TabbarPage extends StatelessWidget {
  const TabbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, //número de pestañas
      initialIndex: 1, //por defecto es 0, indica la pestaña inicial
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar Page"),
          bottom: TabBar(
            indicatorColor: Colors.red, //Color de la barra que se selecciona
            indicatorWeight: 8, //ancho de la barra
            unselectedLabelColor:
                Colors.pink, // color de los label NO seleccionado (tab)
            labelColor: Colors.cyan, // color del label seleccionado (tab)
            isScrollable:
                true, //si tienes muchas pestañas, te ayuda a desplazar
            // conjunto de pestañas
            tabs: [
              Tab(text: "chats"),
              Tab(text: "estados"),
              Tab(text: "llamadas"),
              Tab(text: "pestaña 4"),
              Tab(text: "pestaña 5"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Pantalla chats")),
            Center(child: Text("Pantalla Estados")),
            Center(child: Text("Pantalla Llamadas")),
            Center(child: Text("Pantalla 4")),
            Center(child: Text("Pantalla 5")),
          ],
        ),
      ),
    );
  }
}
