import '../IComida/IComida.dart';
import '../Privada/Privada.dart';
import '../Utils.dart';

class Pessoa {
  /*
  Pessoa: classe que define uma pessoa;

  ATRIBUTOS:
  -String nome: nome da pessoa que está registrado no cartório especificamente (brinks);
  -int idade: diferença do dia atual com a data de nascimento do indivíduo;
  -bool temDiabetes: booleano que identifica se a pessoa tem ou não diabetes (determinado se a pessoa possui 3 ou mais comidas em seu estômago) (não possui setter); 
  -List<IComida> estomago: simulação de estômago, pois é uma lista com as comidas que o indivíduo possui em seu estômago;

  MÉTODOS:
  -void comer(IComida comida): coloca em seu estômago a comida que foi inserida como argumento da função;
  -bool _ehDiabetico(): método privado utilizado em comer e cagar que identifica se a pessoa é diabética (possuindo ou não 3 ou mais comidas em seu estômago);
  -void cagar(Privada privada): transfere até um limite de 5 comidas de estômago para privada, verificando se ela ficou entupida e se o indivíduo perdeu ou não diabetes;
  */

  late String _nome;
  late int _idade;
  late bool _temDiabetes;
  late List<IComida> _estomago;

  // __str__
  @override
  String toString() {
    return "$_nome";
  }

  //construtor
  Pessoa(String nomeInserido, int _idade, List<IComida> _estomago) {
    this._nome = Utils.capitalizeNameSurname(nomeInserido);
    this._idade = _idade;
    this._estomago = _estomago;
    this._temDiabetes = this._ehDiabetico();
  }

  // nome
  String get nome {
    return this._nome;
  }

  void set nome(String nomeRecebido) {
    if (nomeRecebido != null && nomeRecebido.isEmpty == false) {
      this._nome = Utils.capitalizeNameSurname(nomeRecebido);
    }
  }

  // idade
  int get idade {
    return _idade;
  }

  void set idade(int idadeRecebido) {
    if (idadeRecebido >= 0) {
      _idade = idadeRecebido;
    }
  }

  // temDiabetes
  bool get temDiabetes {
    return _temDiabetes;
  }

  // estomago
  List<IComida> get estomago {
    return this._estomago;
  }

  void set estomago(List<IComida> estomagoRecebido) {
    if (estomagoRecebido.length != 0) {
      this._estomago = estomagoRecebido;
    }
  }

  // MÉTODOS
  // comer
  void comer(IComida comida) {
    this._estomago.add(comida);
    if (this._ehDiabetico()) {
      this._temDiabetes = true;
    }
  }

  // ehDiabetico
  bool _ehDiabetico() {
    if (this._estomago.length > 3) {
      return true;
    } else {
      return false;
    }
  }

  // cagar
  void cagar(Privada privada) {
    List<IComida> aux = [];
    aux.addAll(this._estomago);

    aux.forEach((element) {
      if (!privada.taEntupida) {
        privada.dejetos.add(element);
        privada.ehEntupida();
        this._estomago.remove(element);
      }
    });

    this._temDiabetes = _ehDiabetico();
  }
}
