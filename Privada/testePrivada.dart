import '../IComida/Hambuguer/Hamburguer.dart';
import '../IComida/MilkShake/MilkShake.dart';
import '../enum/paladar.dart';
import '../enum/pontoDaCarne.dart';
import '../testeUnitario.dart';
import 'Privada.dart';

void main(List<String> args) {
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

  testeUnitario(privada1.dejetos.length, 0, "Ver se privada está vazia");
  testeUnitario(privada2.dejetos.length, 4, "Ver se tem dejetos");

  privada2.descaga();
  testeUnitario(privada2.dejetos.length, 0, "Ver se após descarga, está vazia");
  testeUnitario(
      privada2.taEntupida, false, "Ver se após descarga, está desentupida");
}
