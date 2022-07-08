import '../IComida/IComida.dart';
import '../Utils.dart';

class Pessoa {
  late String _nome;
  late int _idade;
  late bool _temDiabetes;
  late List<IComida> _estomago;

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

}




//funcoes
//classes
//na