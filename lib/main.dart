import 'package:flutter/material.dart';
import 'package:projetolista/pessoa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Lita para Widget",
      home: Tela1(),
    );
  }
}

class Tela1 extends StatefulWidget {
  @override
  State<Tela1> createState() => _Tela1State();
}

class _Tela1State extends State<Tela1> {
  List<Pessoa> lista = [
    Pessoa(
        nome: "Ryo", idade: 28, sobrenome: "Nishimura", cpf: "671.813.871-11"),
    Pessoa(
        nome: "Hiroaki",
        idade: 28,
        sobrenome: "Nakamura",
        cpf: "000.000.000-00"),
    Pessoa(
        nome: "Hiroto", idade: 28, sobrenome: "Nakamura", cpf: "000.000.000-00")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("App Lista para Widget"),
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
            itemCount: lista.length,
            itemBuilder: (context, index) {
              return ElevatedButton(
                onPressed: () {},
                child: Text(lista[index].nome),
              );
            },
            //return Text(lista[index].nome);

            )
            );
  }
}
