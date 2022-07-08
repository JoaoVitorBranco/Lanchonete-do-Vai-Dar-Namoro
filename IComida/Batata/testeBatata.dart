import '../../testeUnitario.dart';
import '../../enum/paladar.dart';
import 'Batata.dart';

void main() {
  Batata batata = Batata(
      "Ketchup e Cheddar", true, "Batata Supreme", Paladar.SALGADO, 48, 4);
  testeUnitario(batata.nome, "Batata Supreme", "Acompanhamento");

  testeUnitario(
    batata.paladar,
    Paladar.SALGADO,
    "Paladar",
  );

  batata.preco = 40;
  testeUnitario(batata.preco, 40, "Mudar preço");

  batata.nome = "";
  testeUnitario(batata.nome, "", "Mudar Nome Vazio", tipo: "!=");
}
