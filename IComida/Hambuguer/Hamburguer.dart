import '../../enum/paladar.dart';
import '../../enum/pontoDaCarne.dart';
import '../IComida.dart';

class Hamburguer implements IComida {
  PontoDaCarne _pontoDaCarne;
  String _bebida;

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
  Hamburguer(
      String this._bebida,
      PontoDaCarne this._pontoDaCarne,
      String this._nome,
      Paladar this._paladar,
      int this._preco,
      int this._serveQnts);

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

  // PontoDaCarne
  PontoDaCarne get pontoDaCarne {
    return this._pontoDaCarne;
  }

  void set pontoDaCarne(PontoDaCarne pontoDaCarneRecebido) {
    this._pontoDaCarne = pontoDaCarneRecebido;
  }

  // bebida
  String get bebida {
    return this._bebida;
  }

  void set bebida(String bebidaRecebida) {
    this._bebida = bebidaRecebida;
  }
}
