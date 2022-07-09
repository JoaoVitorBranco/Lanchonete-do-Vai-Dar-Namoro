import '../../Utils.dart';
import '../../enum/paladar.dart';
import '../../enum/pontoDaCarne.dart';
import '../IComida.dart';

class Hamburguer implements IComida {
  /*
  Hamburguer: tipo de comida que utiliza a interface IComida;

  ATRIBUTOS:
  -String nome: nome dado no cardápio à comida;
  -int serveQnts: número de pessoas recomendadas para comer a comida;
  -int preco: preço em R$ da comida no cardápio
  -Paladar paladar: ENUM criado para caracterizar o sabor que a comida exala nas papilas gustativas;

  ATRIBUTOS ESPECÍFICOS DE HAMBURGUER:
  -PontoDaCarne pontoDaCarne: ENUM criado para determinar o ponto que está no cardápio do hambúrguer escolhido;
  -String bebida: tipo de bebida que acompanha o hambúrguer (escolhido e predefinido no cardápio);
  */

  PontoDaCarne _pontoDaCarne;
  String _bebida;

  // __str__
  @override
  String toString() {
    return """\u001b[1;32m${_nome}\u001b[0m
    (${Utils.capitalize(_paladar.toString().split('.')[1])}, serve ${serveQnts} pessoa${serveQnts > 1 ? 's' : ''})..................R\$ ${_preco},00
    Ponto da Carne: ${Utils.capitalizeCutENUM(_pontoDaCarne, "p")} Ponto
    Acompanha ${_bebida}""";
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
