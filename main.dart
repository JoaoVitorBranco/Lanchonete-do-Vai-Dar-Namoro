import 'IComida/Batata/Batata.dart';
import 'IComida/Hambuguer/Hamburguer.dart';
import 'IComida/IComida.dart';
import 'IComida/MilkShake/MilkShake.dart';
import 'Pessoa/Pessoa.dart';
import 'enum/paladar.dart';
import 'enum/pontoDaCarne.dart';

void main() {
  //Cardápio
  IComida xBurguer = Hamburguer(
      "Coca-Cola", PontoDaCarne.MALPASSADO, "Cheesas", Paladar.SALGADO, 45, 1);
  IComida xBacon = Hamburguer(
      "Suco de Manga", PontoDaCarne.AOPONTO, "Beycas", Paladar.SALGADO, 50, 1);
  IComida xVegan = Hamburguer("Suco de Banana", PontoDaCarne.BEMPASSADO,
      "Vegas", Paladar.SALGADO, 65, 1);

  IComida mFrutasVermelhas =
      MilkShake("Frutas Vermelhas", true, "Frutas", Paladar.DOCE, 25, 1);
  IComida mChocolate =
      MilkShake("Chocolate", false, "Chocolas", Paladar.DOCE, 25, 1);
  IComida mChocomaluco =
      MilkShake("Nutella", false, "Chocomalucas", Paladar.DOCE, 30, 1);

  IComida batataFrita =
      Batata("Ketchup", false, "Batatas", Paladar.SALGADO, 12, 1);
  IComida batataSupreme =
      Batata("Ketchup e Cheddar", true, "Batatas", Paladar.SALGADO, 24, 2);
  IComida batataPicante = Batata(
      "Ketchup Malagueta, Barbecue", true, "Batatas", Paladar.SALGADO, 48, 4);

  Pessoa casimiro = Pessoa("Casimiro Miguel", 28, []);
  Pessoa anna = Pessoa("Anna Beatriz", 28, []);

  print(casimiro);
}
