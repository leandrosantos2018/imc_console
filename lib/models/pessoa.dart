class Pessoal {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  setNome(String Nome) {
    if(Nome.length >0){
      _nome = Nome;
    }
  }

  String getNome() {
    return _nome.toUpperCase();
  }

  setPeso(double Peso) {
   if(Peso != 0 ){
     _peso = Peso;
   }
  }

  double getPeso() {
    return _peso;
  }

  setAltura(double Altura) {

    if(Altura != 0 ){
     _altura = Altura;
   }
    _altura = Altura;
  }

  double getAltura() {
    return _altura;
  }

  Pessoal();

  double calcularImc(double peso, double altura) {
    return peso / (altura * altura);
  }

  classficacao(double Imc) {
    if (Imc == 0 ) {
      throw Exception("Erro ao inserir as informações de peso e altura");
    }
    if (Imc < 16) {
      print("Sua Classificação é Magreza grave");
    } else if (Imc > 16 && Imc < 17) {
      print("Sua classificação é Magreza leve");
    }
  }
}
