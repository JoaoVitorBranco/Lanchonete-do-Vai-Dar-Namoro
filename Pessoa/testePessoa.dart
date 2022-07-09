import '../IComida/Hambuguer/Hamburguer.dart';
import '../IComida/MilkShake/MilkShake.dart';
import '../Privada/Privada.dart';
import '../enum/paladar.dart';
import '../enum/pontoDaCarne.dart';
import '../testeUnitario.dart';
import 'Pessoa.dart';

void main(List<String> args) {
  // Teste criação
  Pessoa teste = Pessoa("João Branco", 19, []);
  testeUnitario(teste.nome, "João Branco", "Criação de pessoa - Nome");
  testeUnitario(teste.idade, 19, "Criação de pessoa - Idade");
  testeUnitario(teste.temDiabetes, false, "Criação de pessoa - TemDiabetes");
  testeUnitario(teste.estomago.length, 0, "Criação de pessoa - Estomago");
  testeUnitario(teste.conta, 0, "Criação de pessoa - Conta");

  // Teste do restaurante
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
  testeUnitario(teste.temDiabetes, true, "Tem diabetes");
  testeUnitario(teste.conta, 95, "Soma conta");
  teste.pagarConta();
  testeUnitario(teste.conta, 0, "Pagou a conta");

  // Teste mudar nomes
  teste.nome = "Vitor Soller";
  testeUnitario(teste.nome, "Vitor Soller", "Mudar Nome");
  teste.nome = "";
  testeUnitario(teste.nome, "", "Mudar Nome Vazio", tipo: "!=");

  // Teste cagar
  Privada privada1 = Privada([]);
  teste.comer(xbacon);
  teste.comer(chocolouco);

  testeUnitario(teste.estomago.length, 6,
      "Após comer novamente, possui 6 alimentos no estômago");

  teste.cagar(privada1);
  testeUnitario(teste.estomago.length, 1, "Após cagar, restou 1 alimento");
  testeUnitario(teste.temDiabetes, false, "Após cagar, perdeu a Diabetes");
  testeUnitario(privada1.taEntupida, true, "Após cagar, privada1 entupiu");

  Privada privada2 = Privada([]);
  teste.cagar(privada2);
  testeUnitario(
      teste.estomago.length, 0, "Após cagar novamente, restou 0 alimentos");
  testeUnitario(privada2.dejetos.length, 1,
      "Após cagar novamente, privada2 possui 1 dejeto");
  testeUnitario(privada2.taEntupida, false,
      "Após cagar novamente, a privada2 não entupiu");

  Privada privada3 = Privada([]);
  teste.cagar(privada3);
  testeUnitario(teste.estomago.length, 0,
      "Após cagar pela última vez, restou 0 alimentos");
  testeUnitario(privada3.dejetos.length, 0,
      "Após cagar pela última vez, privada3 possui 0 dejetos");
  testeUnitario(privada3.taEntupida, false,
      "Após cagar pela última vez, privada3 não entupiu");
}
