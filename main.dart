import 'Comida.dart';
import 'Hamburguer.dart';
import 'MilkShake.dart';
import 'Paladar.dart';
import 'Pessoa.dart';

void main() {

  Pessoa pessoa1 = Pessoa("Lucas Duez", 21, false);
  Comida comida1 = Hamburguer("Hamburger", null, 21, Paladar.Salgado, "Ao ponto");
  Comida milk = MilkShake("MIlk", null, 15, Paladar.Doce, true, "Chocolate");
  Comida milk2 = MilkShake("MIlk", null, 15, Paladar.Doce, true, "Chocolate");
  Comida milk3 = MilkShake("MIlk", null, 15, Paladar.Doce, true, "Chocolate");


  pessoa1.Comer(milk);
  pessoa1.Comer(milk2);
  pessoa1.Comer(milk3);
  pessoa1.Comer(milk3);
}
