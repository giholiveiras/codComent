// Importando as classes e os pacotes necessários para o funcionamento do flutter
import 'package:flutter/material.dart';
import 'package:flutter_som_variaspgs/principal.dart';
import 'package:flutter_som_variaspgs/produtos.dart';
import 'imc.dart';
import 'contador.dart';
import 'usuario.dart';

// Inicializando a aplicação do flutter
void main(){
  runApp(const MyApp());
}

// Construindo a classe MyApp
class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  //Sobrescrevendo método
  @override
  // Método build que constrói a interface do usuário
  Widget build(BuildContext context){
    return MaterialApp(
      //Desabilita o banner de debug no canto superior direito
      debugShowCheckedModeBanner: false,
      // Define o título da aplicação
      title: 'Rotas nomeadas',
      // Definindo a rota inicial da aplicação
      initialRoute: '/',
      // Rotas nomeadas para cada uma das páginas
      routes: {'/': (context) => const Principal (),
        '/primeira': (context) => const Imc (),
        '/segunda': (context) => const Contador (),
        '/terceira': (context) => const Usuarios (),
        '/quarta': (context) => const Produtos()
      }
    );
  }
}
