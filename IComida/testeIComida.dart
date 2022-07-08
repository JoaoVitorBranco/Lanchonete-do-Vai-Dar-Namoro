import 'IComida.dart';

void main() {
  print("Verificando IComida");
  print('');
  IComida teste = IComida('XisBacon', 1, 15, 'Salgado');
  if (teste.nome == 'XisBacon' &&
      teste.serveQnts == 1 &&
      teste.preco == 15 &&
      teste.paladar == 'Salgado') {
    print("Funcionando! =)");
  } else {
    print("Erro em criar comida");
    print("Esperava XisBacon, recebido ${teste.nome}");
  }

  teste.nome = "XisSalada";
  if (teste.nome == "XisSalada") {
    print("Funcionando! =)");
  } else {
    print("Erro em mudar nome");
    print("Esperava XisSalada, recebido ${teste.nome}");
  }
  print("----------------------");
}
