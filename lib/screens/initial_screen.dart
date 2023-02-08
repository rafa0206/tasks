import 'package:flutter/material.dart';
import '../components/task.dart';

class InitialScreen extends StatefulWidget {
  //se fossemos receber a informação seria aqui
  // em 'InitialScreen' a propriedade 'opacidade'
  // bool opacidade = true;

  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  //como não é uma informação que estamos recebendo
  //e sim um 'estado' que estamos alterando, a propriedade
  // 'opacidade' ficará aqui dentro do '_InitialScreenState'

  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 1000),
        child: ListView(
          children: const [
            Task(
              nome: 'Aprender flutter',
              foto:
              'assets/images/dash.png',
              dificuldade: 3,
            ),
            Task(
              nome: 'Andar de bike',
              foto:
              'assets/images/bike.png',
              dificuldade: 3,
            ),
            Task(
              nome: 'Meditar',
              foto:
              'assets/images/meditar.png',
              dificuldade: 4,
            ),
            Task(
              nome: 'Ler',
              foto:
              'assets/images/ler.png',
              dificuldade: 2,
            ),
            SizedBox(height: 80,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}