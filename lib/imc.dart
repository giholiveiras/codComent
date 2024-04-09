// Importando as classes e os pacotes necessários para o funcionamento do flutter
import 'package:flutter/material.dart';
import 'dart:math';

// Inicializando a aplicação do flutter
void main(){
  runApp(const Imc());
}

// Construindo a classe Imc
class Imc extends StatelessWidget {
  const Imc ({super.key});


  @override
  //Retornando um widget
  Widget build(BuildContext context) {
    // Fornecendo funcionalidades básicas para a construção de aplicativos
    return const MaterialApp(
      // Remove o banner no modo de desenvolvimento
      debugShowCheckedModeBanner: false,
      // Definindo "Home" como página inicial
      home: const Home(),
    );
  }
}
// Definindo a classe "Home" como StatefulWidget
class Home extends StatefulWidget {
  // Definindo o corpo da classe Home
  const Home({super.key});


  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  // Controlando a instancia de texto peso
  TextEditingController pesoController = new TextEditingController();
  // Controlando a instancia de texto altura
  TextEditingController alturaController = new TextEditingController();
  String _textoInfo = "Informe seus dados";

  // Limpando os campos de texto e altura
  void _limpar_Tela(){
    pesoController.text = "";
    alturaController.text = "";
    setState(() {
      _textoInfo = "Informe seus dados";
    });
  }
//calculando imc
  void _calcular_Imc(){
    setState(() {
      double peso = double.parse(pesoController.text);
      double altura = double.parse(alturaController.text);
      double imc = peso / pow ((altura/100),2);
// estruturas de controle condicional
      if (imc <16.5){
        _textoInfo = "Desnutrido (${imc})";
      }
      else if (imc>=18.5){
        _textoInfo = "Abaixo do peso (${imc})";
      }
      else if (imc>=24.9) {
        _textoInfo = "Peso Ideal (${imc})";
      }
      else if (imc>=29.9) {
        _textoInfo = "Sobre Peso (${imc})";
      }
      else if (imc>=34.9) {
        _textoInfo = "Obesidade Grau I (${imc})";
      }
      else if (imc>=39.9) {
        _textoInfo = "Obesidade Grau II (${imc})";
      }
      else  {
        _textoInfo = "Obesidade Grau III (${imc})";
      }
    });
  }

// COnfigurações para exibição de texto
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Calculadora IMC'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        actions: <Widget>[
          IconButton(
              onPressed: _limpar_Tela,
              icon: Icon(Icons.refresh)
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.person_outline,
              size: 128.0,
              color: Colors.blueGrey,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "PESO (KG)",
                  labelStyle: TextStyle(color: Colors.black)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: pesoController,
            ),
            //Segundo Imput para a altura
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "ALTURA(CM)",
                  labelStyle: TextStyle(color: Colors.black)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: alturaController,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                height: 50.0,
                child: ElevatedButton(
                    onPressed:_calcular_Imc,
                    child: const Text ("Calcular")
                ),
              ),
            ),
            //Botão para executar o calculo do IMC,

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


