import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../../../IComida/Hambuguer/Hamburguer.dart';
import '../../../enum/paladar.dart';
import '../../../enum/pontoDaCarne.dart';

void main() {
  Hamburguer teste = Hamburguer("Suco de Caju", PontoDaCarne.AOPONTO,
      "Lanche do Brancão", Paladar.SALGADO, 36, 2);

  test("Instanciando Hamurguer", (() {
    expect(teste.bebida, "Suco de Caju");
    expect(teste.pontoDaCarne, PontoDaCarne.AOPONTO);
    expect(teste.nome, "Lanche do Brancão");
    expect(teste.paladar, Paladar.SALGADO);
    expect(teste.preco, 36);
    expect(teste.serveQnts, 2);
  }));

  test("Verificando Hamburguer.nome", () {
    teste.nome = "";
    expect(teste.nome, "Lanche do Brancão");
  });

  test("Verificando Hamburguer.pontoDaCarne", () {
    teste.pontoDaCarne = PontoDaCarne.MALPASSADO;
    expect(
      teste.pontoDaCarne,
      PontoDaCarne.MALPASSADO,
    );
  });
}
