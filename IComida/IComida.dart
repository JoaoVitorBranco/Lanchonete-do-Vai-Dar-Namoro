abstract class IComida {
  late String _nome;
  late int _serveQnts;
  late int _preco;
  late String _paladar;

  //construtor
  IComida(String this._nome, int this._serveQnts, int this._preco,
      String this._paladar);

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
  String get paladar {
    return this._paladar;
  }

  void set paladar(String paladarRecebido) {
    if (paladarRecebido != null && paladarRecebido.isEmpty == false) {
      this._paladar = paladarRecebido;
    }
  }
}
