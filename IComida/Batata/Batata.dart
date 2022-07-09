import '../../Utils.dart';
import '../../enum/paladar.dart';
import '../IComida.dart';

class Batata implements IComida {
  /*
  Batata: tipo de comida que utiliza a interface IComida;

  ATRIBUTOS:
  -String nome: nome dado no cardápio à comida;
  -int serveQnts: número de pessoas recomendadas para comer a comida;
  -int preco: preço em R$ da comida no cardápio
  -Paladar paladar: ENUM criado para caracterizar o sabor que a comida exala nas papilas gustativas;

  ATRIBUTOS ESPECÍFICOS DE BATATA:
  -String acompanhamento: tipo de acompanhamento/molho que vem junto com a Batata;
  -bool temSal: valor booleano para indicar se a batata vem salgada ou não (para os frescos...);
  */
  String _acompanhamento;
  bool _temSal;

  // __str__
  @override
  String toString() {
    return """\u001b[1;36m${_nome}\u001b[0m
    (${Utils.capitalize(_paladar.toString().split('.')[1])}, serve ${serveQnts} pessoa${serveQnts > 1 ? 's' : ''})..................R\$ ${_preco},00
    Acompanha ${_acompanhamento}
    ${_temSal ? "T" : "Não t"}em sal""";
  }

  //override
  @override
  String _nome;
  @override
  Paladar _paladar;
  @override
  int _preco;
  @override
  int _serveQnts;

  //construtor
  Batata(String this._acompanhamento, bool this._temSal, String this._nome,
      Paladar this._paladar, int this._preco, int this._serveQnts);

  // nome
  String get nome {
    return this._nome;
  }

  void set nome(String nomeRecebido) {
    if (nomeRecebido != null && nomeRecebido.isEmpty == false) {
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
    if (paladarRecebido != null) {
      this._paladar = paladarRecebido;
    }
  }

  //acompanhamento
  String get acompanhamento {
    return this._acompanhamento;
  }

  void set acompanhamento(String acompanhamentoRecebido) {
    if (acompanhamentoRecebido.isEmpty == false) {
      this._acompanhamento = acompanhamentoRecebido;
    }
  }

  //temSal
  bool get temSal {
    return this._temSal;
  }

  void set temSal(bool temSalRecebido) {
    this._temSal = temSalRecebido;
  }
}
