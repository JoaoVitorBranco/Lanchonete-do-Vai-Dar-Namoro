import '../../enum/paladar.dart';
import '../IComida.dart';

class Batata implements IComida {
  String _acompanhamento;
  bool _temSal;

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
