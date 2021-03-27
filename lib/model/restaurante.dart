import 'package:mahate/model/produto.dart';

class Restaurante {
  String nome;
  String local;
  String horario;
  String logo;
  List<Produto> produtos;

  Restaurante({this.nome, this.local, this.horario, this.logo, this.produtos});
}
