import 'package:flutter/material.dart';
import 'package:flutter_application_1/eventos_repository.dart';

class ListaEventos extends StatelessWidget{
  const ListaEventos({super.key});

  @override
  Widget build(BuildContext context) {
    final tabela = EventosRepository.tabela_corrida;
    
   // final tabela3 = EventosRepository.tabela_futebol;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Corrida'),
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
      body: ListView.separated(itemBuilder: (BuildContext context, int evento){
        return ListTile(
           title: Container(
              width: 200, // Pode ajustar conforme necessário
              height: 200,
               // Centraliza a imagem
              child: Image.asset(tabela[evento].imagem),
              
            ),
        );
      }, padding: const EdgeInsets.all(16), separatorBuilder: (_,__) => Divider(),itemCount: tabela.length)
    );
  }
}
