// import '../testeUnitario.dart';
// import 'IComida.dart';

// void main() {
//   print("Verificando IComida");
//   print('');
//   IComida teste = IComida('XisBacon', 1, 15, 'Salgado');
//   // Criando
//   if (teste.nome == 'XisBacon' &&
//       teste.serveQnts == 1 &&
//       teste.preco == 15 &&
//       teste.paladar == 'Salgado') {
//     print("Funcionando! =)");
//   } else {
//     print("Erro em criar comida");
//     print("Esperava XisBacon, recebido ${teste.nome}");
//   }

//   // nome
//   teste.nome = "XisSalada";
//   if (teste.nome == "XisSalada") {
//     print("Funcionando! =)");
//   } else {
//     print("Erro em mudar nome");
//     print("Esperava XisSalada, recebido ${teste.nome}");
//   }

//   teste.nome = "";
//   if (teste.nome == "") {
//     print("Erro em mudar nome");
//     print("Esperava XisSalada, recebido ${teste.nome}");
//   } else {
//     print("Funcionando! =)");
//   }

//   // serveQnts
//   teste.serveQnts = 2;
//   if (teste.serveQnts == 2) {
//     print("Funcionando! =)");
//   } else {
//     print("Erro em mudar serveQnts");
//     print("Esperava 2, recebido ${teste.serveQnts}");
//   }

//   teste.serveQnts = -1;
//   if (teste.serveQnts == 2) {
//     print("Funcionando! =)");
//   } else {
//     print("Erro em mudar serveQnts");
//     print("Esperava 2, recebido ${teste.serveQnts}");
//   }

//   // preco
//   teste.preco = 2;
//   if (teste.preco == 2) {
//     print("Funcionando! =)");
//   } else {
//     print("Erro em mudar preco");
//     print("Esperava 2, recebido ${teste.serveQnts}");
//   }

//   teste.preco = -1;
//   if (teste.preco == 2) {
//     print("Funcionando! =)");
//   } else {
//     print("Erro em mudar preco");
//     print("Esperava 2, recebido ${teste.preco}");
//   }

//   // paladar
//   teste.paladar = "Ácido";
//   testeUnitario(teste.paladar, "Ácido", "Mudar Paladar");

//   teste.paladar = "";
//   testeUnitario(teste.paladar, "", "Mudar Paladar", tipo: "!=");

//   print("----------------------");
// }
