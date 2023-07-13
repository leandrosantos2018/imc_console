import 'dart:convert';

import 'package:imc_console/models/pessoa.dart';
import 'dart:io';

execute() {
  var pessoa = Pessoal();

  print("Informe seu nome:");
  pessoa.setNome(stdin.readLineSync(encoding: utf8) ?? "");

  print("Informe seu Peso:");
  pessoa.setPeso(double.parse(stdin.readLineSync(encoding: utf8) ?? "0" ));

  print("Informe seu Altura:");
  pessoa.setAltura(double.parse(stdin.readLineSync(encoding: utf8) ?? "0"));

  print(pessoa.classficacao(pessoa.calcularImc(pessoa.getPeso(), pessoa.getAltura())).toString());
}
