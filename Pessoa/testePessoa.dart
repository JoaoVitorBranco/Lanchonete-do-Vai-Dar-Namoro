import '../IComida/Hambuguer/Hamburguer.dart';
import '../IComida/MilkShake/MilkShake.dart';
import '../enum/paladar.dart';
import '../enum/pontoDaCarne.dart';
import '../testeUnitario.dart';
import 'Pessoa.dart';

void main(List<String> args) {
  Pessoa teste = Pessoa("João Branco", 19, []);
  testeUnitario(teste.nome, "João Branco", "Criação de pessoa - Nome");
  testeUnitario(teste.idade, 19, "Criação de pessoa - Idade");
  testeUnitario(teste.temDiabetes, false, "Criação de pessoa - TemDiabetes");
  testeUnitario(teste.estomago.length, 0, "Criação de pessoa - Estomago");

  Hamburguer xburguer = Hamburguer("Suco de Laranja", PontoDaCarne.MALPASSADO,
      "XBurguer", Paladar.SALGADO, 20, 1);

  Hamburguer xbacon = Hamburguer("Suco de Manga", PontoDaCarne.BEMPASSADO,
      "Bacon", Paladar.SALGADO, 20, 1);

  MilkShake murango =
      MilkShake("Morango", true, "Murango", Paladar.DOCE, 25, 1);

  MilkShake chocolouco =
      MilkShake("Chocolate", false, "chocolouco", Paladar.DOCE, 30, 1);

  teste.comer(xburguer);
  teste.comer(murango);
  teste.comer(xbacon);
  teste.comer(chocolouco);

  testeUnitario(teste.temDiabetes, true, "Após comer muito, tem diabetes");

  teste.nome = "Vitor Guirão";
  testeUnitario(teste.nome, "Vitor Guirão", "Mudar Nome");
  teste.nome = "";
  testeUnitario(teste.nome, "", "Mudar Nome Vazio", tipo: "!=");
}
