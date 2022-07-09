import '../../IComida/Batata/Batata.dart';
import '../../IComida/Hambuguer/Hamburguer.dart';
import '../../IComida/IComida.dart';
import '../../IComida/MilkShake/MilkShake.dart';
import '../../Pessoa/Pessoa.dart';
import '../../Privada/Privada.dart';
import '../../enum/paladar.dart';
import '../../enum/pontoDaCarne.dart';
import 'package:test/test.dart';

/*-void comer(IComida comida): coloca em seu estômago a comida que foi inserida como argumento da função;
  -bool _ehDiabetico(): método privado utilizado em comer e cagar que identifica se a pessoa é diabética (possuindo ou não 3 ou mais comidas em seu estômago);
  -void cagar(Privada privada): transfere até um limite de 5 comidas de estômago para privada, verificando se ela ficou entupida e se o indivíduo perdeu ou não diabetes;
  -void adicionarNaConta(IComida comida): dentro de comer, adiciona o valor da respectiva comida na conta;
  -void pagarConta(): zerar a conta do indivíduo, supondo que ele pagou;*/
void main() {
  Pessoa teste = Pessoa("João Branco", 19, []);
  Privada privada = Privada([]);
  IComida comida1 = Hamburguer(
      "Coca-Cola", PontoDaCarne.MALPASSADO, "Cheesas", Paladar.SALGADO, 45, 1);
  test("Instanciando Pessoa", () {
    expect(teste.nome, "João Branco");
    expect(teste.idade, 19);
    expect(teste.temDiabetes, false);
    expect(teste.estomago.length, 0);
    expect(teste.conta, 0);
  });
  test("Verificando Pessoa.nome", () {
    teste.nome = "Vitor Soller";
    expect(teste.nome, "Vitor Soller");

    teste.nome = "";
    expect(teste.nome, "Vitor Soller");
  });
  test("Verificando método Pessoa.comer()", () {
    teste.comer(comida1);
    teste.comer(comida1);
    expect(teste.estomago.length, 2);
  });
  test("Verificando método Pessoa.ehDiabetico()", () {
    expect(teste.temDiabetes, false);

    teste.comer(comida1);
    teste.comer(comida1);
    expect(teste.temDiabetes, true);
  });
  test("Verificando método Pessoa.cagar()", () {
    teste.cagar(privada);
    expect(teste.estomago.length, 0);

    teste.comer(comida1);
    teste.comer(comida1);
    teste.cagar(privada);
    expect(teste.estomago.length, 1);
  });
  test("Verificando método Pessoa.adicionarNaConta()", () {
    expect(teste.conta, 45 * 6);
  });
  test("Verificando método Pessoa.pagarConta()", () {
    teste.pagarConta();
    expect(teste.conta, 0);
  });
}
