import 'package:flutter/material.dart';
import 'package:flutter_application_1/eventos.dart';
import 'package:flutter_application_1/detalhes.dart';
import 'package:flutter_application_1/eventos_repository.dart';

class ListaEventos extends StatelessWidget{
  final String titulo;
  final List<Eventos> tabela;
  const ListaEventos({super.key, required this.titulo, required this.tabela});

  @override
  Widget build(BuildContext context) {
    
    
   // final tabela3 = EventosRepository.tabela_futebol;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(titulo),
        titleTextStyle: const TextStyle(
          fontSize: 30,
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.separated(itemBuilder: (BuildContext context, int index){
        final evento = tabela[index];
        return ListTile(
           title:GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetalhesEvento(evento: evento),
                  ),
                );
              },
              child: Container(
                width: 200,
                height: 200,
                child: Image.asset(evento.imagem),
              ),
            ),
        );
      }, padding: const EdgeInsets.all(16), separatorBuilder: (_,__) => Divider(),itemCount: tabela.length)
    );
  }
}
