import '../IComida/IComida.dart';

class Privada {
  /*
  Privada: classe que define uma privada (não confundir com "privado" de POO...);

  ATRIBUTOS:
  -List<IComida> dejetos: list de comidas que foram eliminadas, por uma pessoa, na privada instanciada;
  -bool taEntupida: booleano que identifica se a privada está ou não entupida (não possui setter) ;

  MÉTODOS:
  -void ehEntupida(): função que, se identifica que a privada possui 5 dejetos, determina seu atributo "taEntupida" como true, caso contrário false;
  -void descaga(): elimina todas as comidas dentro de "dejetos", desentupindo a descarga;
  */

  late List<IComida> _dejetos;
  late bool _taEntupida;

  // construtor
  Privada(List<IComida> dejetos) {
    this._dejetos = dejetos;
    this.ehEntupida();
  }

  // dejetos
  List<IComida> get dejetos {
    return this._dejetos;
  }

  void set dejetos(List<IComida> dejetosRecebido) {
    if (dejetosRecebido.length != 0) {
      this._dejetos = dejetosRecebido;
    }
  }

  // taEntupida
  bool get taEntupida {
    return _taEntupida;
  }

  // MÉTODOS
  // ehEntupida
  void ehEntupida() {
    if (this._dejetos.length >= 5) {
      this._taEntupida = true;
    } else {
      this._taEntupida = false;
    }
  }

  // descaga
  void descaga() {
    _dejetos.clear();
    this._taEntupida = false;
  }
}
