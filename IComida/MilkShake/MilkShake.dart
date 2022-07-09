import '../../Utils.dart';
import '../../enum/paladar.dart';
import '../IComida.dart';

class MilkShake implements IComida {
  /*
  MilkShake: tipo de comida que utiliza a interface IComida;

  ATRIBUTOS:
  -String nome: nome dado no cardápio à comida;
  -int serveQnts: número de pessoas recomendadas para comer a comida;
  -int preco: preço em R$ da comida no cardápio
  -Paladar paladar: ENUM criado para caracterizar o sabor que a comida exala nas papilas gustativas;

  ATRIBUTOS ESPECÍFICOS DE MILKSHAKE:
  -String sabor: igrediente/sabor que o MilkShake possui;
  -bool temCanudoPlastico: booleano que verifica se tem (😎) ou não canudo de PLÁSTICO;
  */
  String _sabor;
  bool _temCanudoPlastico;

  // __str__
  @override
  String toString() {
    return """\u001b[1;35m${_nome}\u001b[0m
    (${Utils.capitalize(_paladar.toString().split('.')[1])}, serve ${serveQnts} pessoa${serveQnts > 1 ? 's' : ''})..................R\$ ${_preco},00
    Sabor: ${_sabor} 
    ${_temCanudoPlastico ? "A" : "Não a"}companha canudo de plástico""";
  }

  // Override
  @override
  String _nome;

  @override
  Paladar _paladar;

  @override
  int _preco;

  @override
  int _serveQnts;

  // Construtor
  MilkShake(String this._sabor, bool this._temCanudoPlastico, String this._nome,
      Paladar this._paladar, int this._preco, int this._serveQnts);

  // sabor
  String get sabor {
    return _sabor;
  }

  void set sabor(String saborRecebido) {
    if (saborRecebido != "") {
      this._sabor = saborRecebido;
    }
  }

  // temCanudoPlastico
  bool get temCanudoPlastico {
    return _temCanudoPlastico;
  }

  void set temCanudoPlastico(bool temCanudoPlasticoRecebido) {
    _temCanudoPlastico = temCanudoPlasticoRecebido;
  }

  // nome
  String get nome {
    return this._nome;
  }

  void set nome(String nomeRecebido) {
    if (nomeRecebido.isEmpty == false) {
      this._nome = nomeRecebido;
    }
  }

  // serveQnts
  int get serveQnts {
    return this._serveQnts;
  }

  void set serveQnts(int serveQntsRecebido) {
    if (serveQntsRecebido > 0) {
      this._serveQnts = serveQntsRecebido;
    }
  }

  // preco
  int get preco {
    return this._preco;
  }

  void set preco(int precoRecebido) {
    if (precoRecebido > 0) {
      this._preco = precoRecebido;
    }
  }

  // paladar
  Paladar get paladar {
    return this._paladar;
  }

  void set paladar(Paladar paladarRecebido) {
    this._paladar = paladarRecebido;
  }
}
