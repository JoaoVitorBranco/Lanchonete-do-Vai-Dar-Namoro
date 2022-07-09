import 'IComida/Batata/Batata.dart';
import 'IComida/Hambuguer/Hamburguer.dart';
import 'IComida/IComida.dart';
import 'IComida/MilkShake/MilkShake.dart';
import 'Pessoa/Pessoa.dart';
import 'Privada/Privada.dart';
import 'enum/paladar.dart';
import 'enum/pontoDaCarne.dart';

void main() {
  // Cardápio
  IComida xBurguer = Hamburguer(
      "Coca-Cola", PontoDaCarne.MALPASSADO, "Cheesas", Paladar.SALGADO, 45, 1);
  IComida xBacon = Hamburguer(
      "Suco de Manga", PontoDaCarne.AOPONTO, "Beycas", Paladar.SALGADO, 50, 1);
  IComida xVegan = Hamburguer("Suco de Banana", PontoDaCarne.BEMPASSADO,
      "Vegas", Paladar.SALGADO, 65, 1);

  IComida mFrutasVermelhas =
      MilkShake("Frutas Vermelhas", false, "Frutas", Paladar.DOCE, 25, 1);
  IComida mChocolate =
      MilkShake("Chocolate", true, "Chocolas", Paladar.DOCE, 25, 1);
  IComida mChocomaluco =
      MilkShake("Nutella", true, "Chocomalucas", Paladar.DOCE, 30, 1);

  IComida batataFrita =
      Batata("Ketchup", false, "Batatas", Paladar.SALGADO, 12, 1);
  IComida batataSupreme =
      Batata("Ketchup e Cheddar", true, "Supreme", Paladar.SALGADO, 24, 2);
  IComida batataPicante = Batata("Ketchup Jalapeño e Barbecue", true,
      "Batatas Picas", Paladar.PICANTE, 48, 4);

  // Pessoas
  Pessoa littleronald = Pessoa("Hector Guerrini", 25, []);
  Pessoa casimiro = Pessoa("Casimiro Miguel", 28, []);

  // Privada
  Privada privadaQuarto = Privada([]);

  print(
      "\u001b[1;31m❤ Dois jovens se encontram para um Date na famosa Lanchonete do Vai Dar Namoro: ❤");
  print(casimiro);
  print(littleronald);
  print('');
  print(
      "\u001b[1;31mOs pombinhos então começam a ver o cardápio: \u001b[1;33m");
  print(xBurguer);
  print(xBacon);
  print(xVegan);
  print(mFrutasVermelhas);
  print(mChocolate);
  print(mChocomaluco);
  print(batataFrita);
  print(batataSupreme);
  print(batataPicante);

  print("\u001b[1;31mOs dois chamaram o garçom e pediram alguns lanches: ");

  List<IComida> almocoCasimiro = [
    xBurguer,
    batataSupreme,
    mFrutasVermelhas,
    batataFrita
  ];

  List<IComida> almocoLittleRonald = [
    xVegan,
    batataPicante,
    mChocomaluco,
    mChocolate,
    xBacon
  ];

  almocoCasimiro.forEach((element) {
    casimiro.comer(element);
  });
  almocoLittleRonald.forEach((element) {
    littleronald.comer(element);
  });

  print(
      '''"Campeão, desce ${almocoCasimiro.map((element) => element.nome).toList().join(", ")}" - disse ${casimiro.nome}''');

  print(
      '''"Campeão, desce um ${almocoLittleRonald.map((element) => element.nome).toList().join(", ")}", disse ${littleronald.nome}''');

  print(
      "Os pombinhos esfomeados esperaram muito, enquanto trocavam caríceas e olhares...");
  print("Enfim o almoço chegou e eles comeram");
}
