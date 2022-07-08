import '../../enum/paladar.dart';
import '../../enum/pontoDaCarne.dart';
import '../../testeUnitario.dart';
import 'Hamburguer.dart';

void main(List<String> args) {
  Hamburguer teste = Hamburguer("Suco de Caju", PontoDaCarne.AOPONTO,
      "Lanche do Brancão", Paladar.SALGADO, 36, 2);

  testeUnitario(teste.bebida, "Suco de Caju", "Criação de Hamburguer - Bebida");
  testeUnitario(teste.pontoDaCarne, PontoDaCarne.AOPONTO,
      "Criação de Hamburguer - Ponto da Carne");
  testeUnitario(
      teste.nome, "Lanche do Brancão", "Criação de Hamburguer - Nome");
  testeUnitario(
      teste.paladar, Paladar.SALGADO, "Criação de Hamburguer - Paladar");
  testeUnitario(teste.preco, 36, "Criação de Hamburguer - Preço");
  testeUnitario(
      teste.serveQnts, 2, "Criação de Hamburguer - Quantidade de Pessoas");

  teste.pontoDaCarne = PontoDaCarne.MALPASSADO;
  testeUnitario(
      teste.pontoDaCarne, PontoDaCarne.MALPASSADO, "Mudando Ponto da Carne");

  teste.nome = "";
  testeUnitario(teste.nome, "", "Mudando Nome Vazio", tipo: "!=");
}
