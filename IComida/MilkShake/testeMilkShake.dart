import '../../testeUnitario.dart';
import '../../enum/paladar.dart';
import 'Milkshake.dart';

void main() {
  MilkShake teste =
      MilkShake("Manjericão", true, "Marguerita", Paladar.AMARGO, 15, 1);

  testeUnitario(teste.sabor, "Manjericão", "Criar Milkshake");
  testeUnitario(teste.temCanudoPlastico, true, "Criar Milkshake");
  testeUnitario(teste.nome, "Marguerita", "Criar Milkshake");
  testeUnitario(teste.paladar, Paladar.AMARGO, "Criar Milkshake");
  testeUnitario(teste.preco, 15, "Criar Milkshake");
  testeUnitario(teste.serveQnts, 1, "Criar Milkshake");

  teste.nome = "Pizza de Manjericão";
  testeUnitario(teste.nome, "Pizza de Manjericão", "Mudando nome Milkshake");

  teste.nome = "";
  testeUnitario(teste.nome, "", "Mudando nome Milkshake vazio", tipo: "!=");
}
