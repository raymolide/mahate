import 'package:get_it/get_it.dart';
import 'package:mahate/controlador/dados.dart';

GetIt getIt = GetIt.instance;

void setUpGetIt() {
  getIt.registerLazySingleton(() => Dados());
}
