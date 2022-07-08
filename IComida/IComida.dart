class IComida {
  String _nome;
  int serveQnts;
  int preco;
  String paladar;

  //construtor
  IComida(String this._nome, int this.serveQnts, int this.preco,
      String this.paladar);

  // nome
  String get nome {
    return this._nome;
  }

  void set nome(String nomeRecebido) {
    // print("O nome foi mudado de " + _nome + " para " + nomeRecebido);
    this._nome = nomeRecebido;
  }
}
