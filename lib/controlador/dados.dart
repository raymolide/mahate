import 'package:mahate/model/produto.dart';
import 'package:mobx/mobx.dart';

part 'dados.g.dart';

class Dados = _Dados with _$Dados;

abstract class _Dados with Store {
  @observable
  ObservableList prods = [].asObservable();

  @observable
  int cartNumber = 0;

  @action
  void incrementCart(int valor) {
    cartNumber = valor;
  }

  @action
  void favoriteProds(Produto prod) {
    prods.add(prod);
  }
}
