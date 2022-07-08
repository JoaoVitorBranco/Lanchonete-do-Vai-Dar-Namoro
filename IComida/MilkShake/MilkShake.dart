import '../../enum/paladar.dart';
import '../IComida.dart';

class MilkShake implements IComida {
  String _sabor;
  bool _temCanudoPlastico;

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
