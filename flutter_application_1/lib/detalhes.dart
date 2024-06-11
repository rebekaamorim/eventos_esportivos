import 'package:flutter/material.dart';
import 'package:flutter_application_1/eventos.dart';
import 'package:flutter_application_1/eventos_repository.dart';

class DetalhesEvento extends StatelessWidget {
  final Eventos evento;

  const DetalhesEvento({super.key, required this.evento});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Detalhes de Evento',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(0, 251, 252, 253),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 40),
              SizedBox(
                      height: 200,
                      width: 480,
                      child: Image.asset(evento.imagem, fit: BoxFit.cover),
                    ),
              
              const SizedBox(height: 40),
              Container(
                height: null,
                width: 400,
                decoration: BoxDecoration(
                border: Border.all(color: Colors.cyan, width: 2),
                borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical:7 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const Text(
                      'Evento:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      evento.nm_evento,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  
                  ],
                ),
              ),

            const SizedBox(height: 40),
             Container(
                height: null,
                width: 400,
                decoration: BoxDecoration(
                border: Border.all(color: Colors.cyan, width: 2),
                borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical:7 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Data:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      evento.data,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Container(
                height: null,
                width: 400,
                decoration: BoxDecoration(
                border: Border.all(color: Colors.cyan, width: 2),
                borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical:7 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Horário:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      
                      evento.hora,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
             Container(
                height: null,
                width: 400,
                decoration: BoxDecoration(
                border: Border.all(color: Colors.cyan, width: 2),
                borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical:7 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const Text(
                      'Local:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      evento.local,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

