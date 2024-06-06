import 'package:flutter/material.dart';
 
void main() {
  runApp(
    MaterialApp(
      home: Home(),
    )
  );
}
 
class Home extends StatefulWidget {
  const Home({super.key});
 
@override
State<Home> createState() => _HomeState();
}
 
class _HomeState extends State<Home> {
 
  final tarefaController = TextEditingController();
  List listaTarefa = [];
 
  void addTarefa(){
 
    setState(() {
      Map<String, dynamic> novaTarefa = Map();
    novaTarefa['titulo'] = tarefaController.text;
    novaTarefa['ok'] = false;
    tarefaController.text = "";
    listaTarefa.add(novaTarefa);
    });
  }
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de tarefas"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                  Expanded(
                  child: TextField(
                  controller: tarefaController,
                  decoration: InputDecoration(
                    labelText: "Nova Tarefa",
                    labelStyle: TextStyle(color: Colors.blue)
                  ),
                )
                ),
                ElevatedButton(onPressed: addTarefa,
                child: const Icon(
                  Icons.add,
                  size: 30,
                ))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: listaTarefa.length,
              itemBuilder: (context,index){
                return CheckboxListTile(
                title: Text(listaTarefa[index]['titulo']),
                value:listaTarefa[index]['ok'],
                secondary: CircleAvatar(
                  child: Icon(listaTarefa[index]['ok'] ? Icons.check : Icons.error),

                ),
                onChanged: (value) {
                  setState((){
                    listaTarefa[index]['ok'] = value;
                  });
                },
             
                );
              }
              )
              )
        ],
      ),
    );
  }
}