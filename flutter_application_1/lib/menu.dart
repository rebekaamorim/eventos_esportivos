import 'package:flutter/material.dart';
import 'package:flutter_application_1/lista_eventos.dart';
import 'package:flutter_application_1/eventos_repository.dart';
import 'package:url_launcher/url_launcher.dart';

void menu() {
  runApp(const Menu());
}


class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);
  
  Future<void> _launchURL() async {
   final Uri url = Uri.parse('https://www.sympla.com.br/eventos/sao-paulo-sp/esportivo');
   if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
    }}
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Fique por dentro de tudo!',
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
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
            const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      height: 200,
                      width: 380,
                      child: Image.asset('imgs/corrida.png', fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                       Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  ListaEventos(titulo: 'Corrida',tabela: EventosRepository.tabela_corrida),
                                ),
                      );
                    },
                    child: Container(
                      height: 170,
                      width: 150,
                      child: Image.asset('imgs/btn1.png', fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                       Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  ListaEventos(titulo: 'Ciclismo',tabela: EventosRepository.tabela_ciclismo),
                                ),
                      );
                    },
                    child: Container(
                      height: 170,
                      width: 150,
                      child: Image.asset('imgs/btn2.png', fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  ListaEventos(titulo: 'Futebol',tabela: EventosRepository.tabela_futebol),
                                ),);
                    },
                    child: Container(
                      height: 170,
                      width: 150,
                      child: Image.asset('imgs/btn3.png', fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  ListaEventos(titulo: 'Natação',tabela: EventosRepository.tabela_natacao),
                                ),
                      );
                    },
                    child: Container(
                      height: 170,
                      width: 150,
                      child: Image.asset('imgs/btn4.png', fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
               MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            disabledColor: Colors.grey,
                            color: Colors.cyan[600],
                            onPressed: _launchURL,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: const Text(
                                'Veja outros esportes! :)',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 30),
                              ),
                            ),
                          ),
            ],
          ),
        ),
      ),
    );
  }
  
}
