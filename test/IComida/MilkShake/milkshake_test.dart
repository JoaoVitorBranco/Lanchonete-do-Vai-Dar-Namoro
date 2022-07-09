import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../../../IComida/MilkShake/MilkShake.dart';
import '../../../enum/paladar.dart';

void main() {
  MilkShake teste =
      MilkShake("Manjericão", true, "Marguerita", Paladar.AMARGO, 15, 1);

  test("Instaciando MilkShake.", (() {
    expect(teste.sabor, "Manjericão");
    expect(teste.temCanudoPlastico, true);
    expect(
      teste.nome,
      "Marguerita",
    );
    expect(teste.paladar, Paladar.AMARGO);
    expect(teste.preco, 15);
    expect(teste.serveQnts, 1);
  }));

  test("Verificando MilkShake.nome", () {
    teste.nome = "Pizza de Manjericão";

    expect(teste.nome, "Pizza de Manjericão");

    teste.nome = "";
    expect(teste.nome, "Pizza de Manjericão");
  });
}
