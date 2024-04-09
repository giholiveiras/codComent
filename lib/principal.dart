// Importando as classes e os pacotes necessários para o funcionamento do flutter
import 'package:flutter/material.dart';
import 'imc.dart';
import 'contador.dart';
import 'usuario.dart';
import 'produtos.dart';

// Construindo a classe Principal como um StatefulWidget
class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<Principal> {
  @override
  // Construindo e retornando a interface do widget
  Widget build(BuildContext context) {
    //Retornando como Scaffold que é a base para a página
    return Scaffold(
      // Widget que contém botão de ação
      appBar: AppBar(
        title: Text("MENU"),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      // Corpo principal de uma pagina
      body: SingleChildScrollView(
        // Espaçamento interno dapágina
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        // Arrumando os itens em uma coluna vertical
        child: Column(
          // Alinhamento horizontal na coluna ocupando todo o espaço disponível
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Icone a ser exibido
            const Icon(
              Icons.add_business_sharp,
              size: 120.0,
              color: Colors.purpleAccent,
            ),

            // Texto exibido
            Text(
              "Aplicação Principal",
              // ALinhamento do texto
              textAlign: TextAlign.center,
              // Estilização do texto
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),

            // Alinhamento em coluna
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // Widget de botão
                  ElevatedButton(
                      child: const Text("IMC"),
                      // função de quando o botão é pressionado
                      onPressed: () {
                      // Navegar para uma nova tela
                        Navigator.push(
                          context,
                          // Define a rota para a nova tela
                          MaterialPageRoute(
                            // Retornando para a página IMC
                              builder: (context) => const Imc()),
                        );
                      }),
                  ElevatedButton(
                      child: const Text("Contador"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            // Retornando para a página Contador
                              builder: (context) => const Contador()),
                        );
                      }),
                  ElevatedButton(
                      child: const Text("Cadastro Usuario"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            // Retornando para a página Usuarios
                              builder: (context) => const Usuarios()),
                        );
                      }),
                  ElevatedButton(
                      child: const Text("Cadastro de produtos"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            // Retornando para a página Produtos
                              builder: (context) => const Produtos()),
                        );
                      }),
                ]),
          ],
        ),
      ), // Botão para executar o calculo do IMC,
    );
  }
}
