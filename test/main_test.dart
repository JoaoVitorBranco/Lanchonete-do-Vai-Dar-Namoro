import 'package:test/test.dart';

import '../IComida/Hambuguer/Hamburguer.dart';
import '../IComida/IComida.dart';
import '../IComida/MilkShake/MilkShake.dart';
import '../Privada/Privada.dart';
import '../enum/pontoDaCarne.dart';
import '../enum/paladar.dart';

void main() {
  test('Teste 1', () {
    IComida xburguer = Hamburguer("Suco de Laranja", PontoDaCarne.MALPASSADO,
        "XBurguer", Paladar.SALGADO, 20, 1);

    IComida xbacon = Hamburguer("Suco de Manga", PontoDaCarne.BEMPASSADO,
        "Bacon", Paladar.SALGADO, 20, 1);

    IComida murango =
        MilkShake("Morango", true, "Murango", Paladar.DOCE, 25, 1);

    IComida chocolouco =
        MilkShake("Chocolate", false, "chocolouco", Paladar.DOCE, 30, 1);

    Privada privada1 = Privada([]);
    Privada privada2 = Privada([xburguer, xbacon, murango, chocolouco]);
    expect(privada1.dejetos.length, 0);
  });
  test('Teste 2', () {});
  test('Teste 3', () {});
}
