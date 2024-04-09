import 'package:flutter/material.dart';
import 'dart:math';

// Inicializando a aplicação do flutter
void main(){
  runApp(const Produtos());
}

// Construindo a classe Usuarios
class Produtos extends StatelessWidget {
  const Produtos({super.key});

  // Definindo um widget
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

//Define a classe Home como um StatefulWidget.
class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  //Controlador para o campo de usuário.
  TextEditingController nomeController = new TextEditingController();
  TextEditingController descricaoController = new TextEditingController();
  // Exibindo mensagens informativas.
  String _textoInfo = "Informe seus dados";

  // Limpando os campos da tela
  void _limpar_Tela(){
    nomeController.text = "";
    descricaoController.text = "";
    setState(() {
      _textoInfo = "Informe seus dados";
    });
  }

  // Informando que usuário foi cadastrado om sucesso
  void _cadastrar_nome(){
    nomeController.text = "";
    descricaoController.text = "";
    setState(() {
      _textoInfo = "Cadastrado com sucesso";
    });

  }


  @override
  Widget build(BuildContext context) {
    //Estrutura básica para layour da página
    return Scaffold(
      //  Barra de aplicativo com título "Cadastro de Usuário" e um ícone de atualização.
      appBar: AppBar(

        title: Text('Cadastro de Produtos'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        actions: <Widget>[
          // Definindo um widget pra botão
          IconButton(
              onPressed: _limpar_Tela,
              icon: Icon(Icons.refresh)
          )
        ],
      ),
      // Permite a rolagem da tela
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.person_outline,
              size: 128.0,
              color: Colors.black,
            ),
            // widget para entrada  de texto
            TextField(
              keyboardType: TextInputType.text,
              //Decorando a aparência do campo de texto
              decoration: InputDecoration(
                  labelText: "Usuário",
                  labelStyle: TextStyle(color: Colors.black)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: nomeController,
            ),
            //Segundo Imput para a descricao
            TextField(
              // Ocultar texto no campo senha
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Descricao",
                  labelStyle: TextStyle(color: Colors.black)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: descricaoController,
            ),
            // Espaçamento do widget
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                height: 50.0,
                // Botão para cadastrar usuário
                child: ElevatedButton(
                  // Ação do botão quando pressionado
                    onPressed: _cadastrar_nome,
                    child: const Text ("Cadastrar Usuário")
                ),
              ),
            ),
            //Botão para executar o cadastro de produtos

            Text(
                _textoInfo,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0
                )
            ),
          ],
        ),
      ),
    );
  }
}


