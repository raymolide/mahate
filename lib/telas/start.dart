import 'package:flutter/material.dart';
import 'package:mahate/model/Restaurante.dart';
import 'package:mahate/model/produto.dart';
import 'package:mahate/mywidgets/mylistview.dart';
import 'package:mahate/mywidgets/mytextfield.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  static final prods = [
    Produto(
        natureza: "Moçambicana",
        nome: "Matapa",
        tempo: "13m",
        valor: 250,
        foto: "images/matapa.jpeg"),
    Produto(
        natureza: "Americana",
        nome: "Hamburguer",
        tempo: "10m",
        valor: 300,
        foto: "images/hamburguer.jpeg"),
    Produto(
        natureza: "Chinesa",
        nome: "Sushi",
        tempo: "5m",
        valor: 426,
        foto: "images/sushi.jpeg"),
    Produto(
        natureza: "Italiana",
        nome: "Pizza",
        tempo: "13m",
        valor: 750,
        foto: "images/pizza.jpeg")
  ];

  final restaurante = [
    Restaurante(
        nome: "Ivana's Tasty",
        local: "Maputo",
        horario: "07h-22h",
        logo: "images/ivanas.jpeg",
        produtos: prods),
    Restaurante(
        nome: "KFC",
        local: "Maputo",
        horario: "08h-21h",
        logo: "images/kfc.png"),
    Restaurante(
        nome: "Olimpia Tasty",
        local: "Maputo",
        horario: "08h-20h",
        logo: "images/Olympia Tasty.png"),
    Restaurante(
        nome: "Pizza Hut",
        local: "Maputo",
        horario: "09h-23h",
        logo: "images/pizzahut.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Inicial"),
        ),
        body: Column(
          children: [
            myTextFormField("Pesquisar", false),
            Flexible(child: mylistview(prods)),
          ],
        ));
  }
}
