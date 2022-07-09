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
      Batata("Ketchup e Cheddar", true, "Supremas", Paladar.SALGADO, 24, 2);
  IComida batataPicante = Batata(
      "Ketchup Jalapeño e Barbecue", true, "Picas", Paladar.PICANTE, 48, 4);

  List<IComida> cardapio = [
    xBurguer,
    xBacon,
    xVegan,
    mFrutasVermelhas,
    mChocolate,
    mChocomaluco,
    batataFrita,
    batataSupreme,
    batataPicante
  ];

  // Pessoas
  Pessoa littleRonald = Pessoa("Hector Guerrini", 25, []);
  Pessoa casimiro = Pessoa("Casimiro Miguel", 28, []);

  List<Pessoa> casal = [casimiro, littleRonald];
  // Privada
  Privada privadaQuarto = Privada([]);

  print(
      "\u001b[1;31m❤ Dois jovens se encontram para um Date na famosa Lanchonete do Vai Dar Namoro: ❤\n");
  casal.forEach((element) {
    print("${element} de ${element.idade} anos.");
  });

  print('');
  print(
      "\u001b[1;31mOs pombinhos então começam a ver o cardápio: \u001b[1;33m\n");

  cardapio.forEach(print);

  print("\u001b[1;31mO casal chamou o garçom e pediram alguns lanches: ");

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

  // casal.forEach((element) {
  //   print(
  //       "${element.temDiabetes ? "Desenvolveu diabetes" : "Nãogi tem diabetes"}");
  // });

  almocoCasimiro.forEach((element) {
    casimiro.comer(element);
  });
  almocoLittleRonald.forEach((element) {
    littleRonald.comer(element);
  });

  casal.forEach((pessoa) {
    print(
        '''\u001b[1;33"mCampeão, desce ${pessoa.estomago.map((element) => element.nome).toList().join(", ")}", disse ${casimiro}''');
  });

  print("");
  print(
      "\u001b[1;31m❤ Os pombinhos esfomeados esperaram muito, enquanto trocavam caríceas e olhares...");
  print("Enfim o jantar chegou e eles comeram.❤\n");

  casal.forEach((pessoa) {
    print(
        "\u001b[1;33m${pessoa} come um ${pessoa.estomago.map((element) => element.nome).toList().join("\n${pessoa} come um ")}");
  });
  print("");
  print(
      "\u001b[1;31m❤ O jantar foi muito bom, então eles decidiram ir para casa aproveitar um pouco mais rsrs");
  print(
      "\u001b[1;31mPorém quando chegaram lá, ${casimiro} e ${littleRonald} começaram a sentir algo borbulhando e precisaram correr para a única privada que tinha em seu apartamento, a do quarto.❤\n");

  casal.forEach((pessoa) {
    print("${casal.indexOf(pessoa) + 1}° foi ${pessoa}: ");

    while (pessoa.estomago.length > 0) {
      while (!privadaQuarto.taEntupida && pessoa.estomago.length > 0) {
        pessoa.cagar(privadaQuarto);
      }

      if (privadaQuarto.taEntupida) {
        print("Mas ${pessoa} precisava então precisava desentupir a privada");
        privadaQuarto.descaga();
      }
    }

    print("E $pessoa conseguiu terminar seu serviço!\n");
  });

  print(
      "\u001b[1;31mE assim terminou a noite dos dois pombinhos, abraçadinhos em sua cama. Fim da História ❤");
}
