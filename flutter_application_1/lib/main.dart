import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
          body: Container(
            padding: EdgeInsets.all(20),
            color: Colors.grey[900],
            child: Column (children: [
              Expanded(
              child: SingleChildScrollView(
              child:Column(children:[
                SizedBox(height: 200,),
                const Text(
                  'Login',
                  style: TextStyle(
                    //fontFamily - colocar
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height:70,),
                  Form(
                  child:Column(children: [ TextFormField(
                    autocorrect: false,
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                    decoration: const InputDecoration(
                     
                     enabledBorder: OutlineInputBorder(
                        
                        borderRadius: BorderRadius.all(Radius.circular(40), ),
                        borderSide: BorderSide(color: Colors.cyan, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40), ),
                        borderSide: BorderSide(color: Colors.cyan, width: 3),
                      ),
                      hintText: 'E-mail',
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon:Icon(Icons.email, color: Colors.cyan),

                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value){
                      if (value!.isEmpty){
                        return 'Preencha o campo de email';
                      } 
                    },
                  ),
                  
                  const SizedBox(height:30,),

                  TextFormField(
                    autocorrect: false,
                    obscureText: true,
                    
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                    decoration: const InputDecoration(

                       enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40), ),
                        borderSide: BorderSide(color: Colors.cyan, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40), ),
                        borderSide: BorderSide(color: Colors.cyan, width: 3),
                      ),
                      hintText: 'Senha',
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon:Icon(Icons.lock_outline_rounded, color: Colors.cyan,),

                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value){
                      if (value!.isEmpty){
                        return 'Preencha o campo de senha';
                      } 
                    },
                  ),

                  SizedBox(height: 10, ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      
                      children: [
                        Text(
                          'Esqueci minha senha     ',
                          style: TextStyle(
                            color: Colors.cyan,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.cyan,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),
                      MaterialButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        disabledColor: Colors.grey,
                        color: Colors.cyan[600],
                        onPressed: () {  },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                          child: const Text(
                            'Entrar',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                                    /*onPressed: () {
                                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:
                          (context) => const Menu()),
                          );
                                    },*/
              ),

              SizedBox(height: 250,),
               const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      
                      children: [
                        Text(
                          'Você ainda não tem login?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize:15,
                          ),
                        ),
                        Text(
                          '  Se cadastre!',
                          style: TextStyle(
                            color: Colors.cyan,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.cyan,
                            fontSize: 15,
                            
                          ),
                        ),
                      ],
                    ),
              
              
      
                  ],),
                  
                )
            
              ],)
            ))
          ],
          )
            ),
        ),
      );
  }
}

