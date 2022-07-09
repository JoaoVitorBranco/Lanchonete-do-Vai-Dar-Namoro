import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import '../../../IComida/Batata/Batata.dart';
import '../../../enum/paladar.dart';

void main() {
  Batata batata = Batata(
      "Ketchup e Cheddar", true, "Batata Supreme", Paladar.SALGADO, 48, 4);

  test("Instanciando Batata", () {
    expect(batata.nome, "Batata Supreme");

    expect(batata.paladar, Paladar.SALGADO);
  });

  test("Verificando Batata.nome", () {
    batata.preco = 40;
    expect(batata.preco, 40);

    batata.nome = "";
    expect(batata.nome, "Batata Supreme");
  });
}
