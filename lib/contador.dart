import 'package:flutter/material.dart';

// Inicializando a aplicação do flutter
void main(){
  runApp(const Contador());
}

// Construindo a classe Contador
class Contador extends StatelessWidget {
  const Contador({super.key});

  // Definindo um widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //Definindo o tema do aplicativo
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purpleAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// Definindo uma classe
class MyHomePage extends StatefulWidget {
  // Definindo um construtor
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // Incrementando valor do contador
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  // Decrementando valor do contador
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  // Criando widget
  Widget build(BuildContext context) {
    return Scaffold(
      // Criando AppBar para barra de aplicativo
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // Onde ficará o conteúdo principal
      body: Center(
        // Alinhamento de coluna
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            // Organizando os widgets numa linha horizontal
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

            // criando um botão
                ElevatedButton(
                    onPressed: _incrementCounter, child: const Icon(Icons.add)),
                ElevatedButton(
                    onPressed: _decrementCounter, child: const Icon(Icons.remove)),
              ],
            ),
          ],
        ),
      ),
      /*/floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), */
    );
  }
}