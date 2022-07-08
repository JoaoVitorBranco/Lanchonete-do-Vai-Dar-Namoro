import 'IComida/Hambuguer/Hamburguer.dart';
import 'IComida/IComida.dart';
import 'IComida/MilkShake/MilkShake.dart';
import 'Pessoa/Pessoa.dart';
import 'enum/paladar.dart';
import 'enum/pontoDaCarne.dart';

void main() {
  IComida xburguer = Hamburguer(
      "Coca-Cola", PontoDaCarne.MALPASSADO, "XBurguer", Paladar.SALGADO, 20, 1);

  Pessoa casimiro = Pessoa("Casimiro Miguel", 28, [xburguer]);
  Pessoa annaBeatriz = Pessoa("Anna Beatriz", 28, []);

  Hamburguer xbacon = Hamburguer("Suco de Manga", PontoDaCarne.BEMPASSADO,
      "Bacon", Paladar.SALGADO, 20, 1);

  MilkShake murango =
      MilkShake("Morango", true, "Murango", Paladar.DOCE, 25, 1);
}
