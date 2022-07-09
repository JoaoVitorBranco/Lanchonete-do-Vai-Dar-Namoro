import '../Utils.dart';
import '../enum/paladar.dart';

abstract class IComida {
  /*
  IComida: interface criada para modelar as comidas que foram criadas;
  
  ATRIBUTOS:
  -String nome: nome dado no cardápio à comida;
  -int serveQnts: número de pessoas recomendadas para comer a comida;
  -int preco: preço em R$ da comida no cardápio
  -Paladar paladar: ENUM criado para caracterizar o sabor que a comida exala nas papilas gustativas;
  */
  
  late String _nome;
  late int _serveQnts;
  late int _preco;
  late Paladar _paladar;

  // __str__
  @override
  String toString() {
    return """${_nome}
    (${Utils.capitalize(_paladar.toString().split('.').last)}, serve ${serveQnts})..................RS ${_preco},00
    """;
  }

  //construtor
  IComida(String this._nome, int this._serveQnts, int this._preco,
      Paladar this._paladar);

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
}
