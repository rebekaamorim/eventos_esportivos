import 'package:flutter_application_1/eventos.dart';
import 'package:flutter_application_1/menu.dart';

class EventosRepository{
  static List<Eventos> tabela_corrida = [
    Eventos(nm_evento: 'Circuito Banco do Brasil 2024 – São Paulo', imagem:'imgs/corrida1.png', data: '09/06/2024', hora: '07h00', local: 'Praça Charles Miller'),
    Eventos(nm_evento: 'Corrida Kids D’Eficiência – etapa Orgulho Autista – 2024', imagem:'imgs/corrida2.png', data: '09/06/2024', hora: '08h00', local: 'Rua Canuto Abreu; Vila Regente Feijó'),
    Eventos(nm_evento: 'Santander Track&Field Run Series', imagem:'imgs/corrida3.png', data: '09/06/2024', hora: '18h00', local: 'Avenida Doutora Ruth Cardoso, 4777;'),
    Eventos(nm_evento: 'Parque das Bicicletas', imagem:'imgs/corrida4.png', data: '09/06/2024', hora: '07h00', local: 'Avenida Doutora Ruth Cardoso, 4777; Jardim Universidade Pinheiros'),
  ];
  static List<Eventos> tabela_ciclismo = [
    Eventos(nm_evento: '2º Passeio Ciclístico do Parque 2024', imagem: 'imgs/bike1.png', data: '30/06/2024', hora: '09h00', local: 'Avenida das Nações Unidas, 14401'),
    Eventos(nm_evento: 'Festival Vamos Passear 2024 ', imagem: 'imgs/bike2.png', data: '07/07/2024', hora: '07h00', local: 'Avenida Queiroz Filho; Vila Hamburguesa'),
    Eventos(nm_evento: 'Pedala Green 2024 ', imagem: 'imgs/bike3.png', data: '04/08/2024', hora: '7h00', local: 'Praça Charles Miller'),
    Eventos(nm_evento: 'Energia Bike 2024', imagem: 'imgs/bike4.png', data:'11/08/2024 ', hora: '07h00 ', local: 'Rua Bento Branco de Andrade Filho, 947'),
    Eventos(nm_evento: 'Shimano Fest 2024', imagem: 'imgs/bike5.png', data: '17/08/2024 ', hora: '10h00', local: 'Avenida Auro Soares de Moura Andrade, 664')];
  static List<Eventos> tabela_natacao = [
    Eventos(nm_evento: 'Centro Esportivo Thomaz Mazzon', imagem: 'imgs/nata1.png', data: 'todas as terças e sextas-feiras', hora: '9h às 10h', local: 'Praça Jânio da Silva Quadros'),
    Eventos(nm_evento: 'Centro Esportivo Santo Amaro/Joerg Bruder ', imagem: 'imgs/nata2.png', data: 'todas as terças e quintas-feiras', hora: '08h às 15h30', local: 'Avenida Padre José Maria, 555 – Santo Amaro'),
    Eventos(nm_evento: 'Mini Balneário José Maria Whitaker ', imagem: 'imgs/nata3.png', data: 'todas as terças e quintas-feiras', hora:'10h30 às 14h00 ', local: 'Avenida Satélite, 756 – São Mateus'),
    Eventos(nm_evento: 'Mini Balneário Jaguaré', imagem: 'imgs/nata4.png', data: 'quartas e sextas-feiras', hora: '15h às 16h', local: 'Rua General Mac Arthur, 1304 – Jaguaré'),
    Eventos(nm_evento: 'Centro Esportivo Raul Tabajara', imagem: 'imgs/nata5.png', data: 'quartas e sextas-feiras', hora: '16h às 17h', local: 'Rua Anhanguera, 484')
  ];
  static List<Eventos> tabela_futebol = [
    Eventos(nm_evento: 'Estádio Municipal Jack Marin', imagem: 'imgs/fute1.png', data: 'Todas as sextas-feiras', hora: '09h00', local: 'Rua Muniz de Souza,1119'),
    Eventos(nm_evento: 'C.E. Ermelino Matarazzo', imagem: 'imgs/fute2.png', data: 'terças e quintas', hora: '07h00 ', local: 'Rua João Euclides Pereira, 308, Jardim Matarazzo'),
    Eventos(nm_evento: 'C.E. Geraldo José De Almeida', imagem: 'imgs/fute3.png', data: 'segunda a sexta', hora: '07h00', local: 'Av. Agenor Couto de Magalhães,32 – Pirituba'),
    Eventos(nm_evento: 'C.E. Joerg Bruder', imagem: 'imgs/fute4.png', data: 'terças e quintas-feiras', hora: '10h00', local: 'Praça Jânio da Silva Quadros, 150, Vila Maria')
  ];
  
}