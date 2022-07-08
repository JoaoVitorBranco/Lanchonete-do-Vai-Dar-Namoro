import 'package:test/test.dart';

import '../IComida/Hambuguer/Hamburguer.dart';
import '../IComida/MilkShake/MilkShake.dart';
import '../Privada/Privada.dart';
import '../enum/pontoDaCarne.dart';
import '../enum/paladar.dart';

void main() {
  test('Teste 1', () {
    Hamburguer xburguer = Hamburguer("Suco de Laranja", PontoDaCarne.MALPASSADO,
        "XBurguer", Paladar.SALGADO, 20, 1);

    Hamburguer xbacon = Hamburguer("Suco de Manga", PontoDaCarne.BEMPASSADO,
        "Bacon", Paladar.SALGADO, 20, 1);

    MilkShake murango =
        MilkShake("Morango", true, "Murango", Paladar.DOCE, 25, 1);

    MilkShake chocolouco =
        MilkShake("Chocolate", false, "chocolouco", Paladar.DOCE, 30, 1);

    Privada privada1 = Privada([]);
    Privada privada2 = Privada([xburguer, xbacon, murango, chocolouco]);
    expect(privada1.dejetos.length, privada2.dejetos.length);
  });
  test('Teste 2', () {});
}
