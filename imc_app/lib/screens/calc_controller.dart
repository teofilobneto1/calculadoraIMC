import 'package:flutter/material.dart';

class CalcController {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String resultado = "";

  void calculo() {
    double peso = double.parse(pesoController.text);
    double altura = double.parse(alturaController.text) / 100;
    double imc = peso / (altura * altura);
    if (imc < 18.5) {
      resultado = "Abaixo do normal (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 18.6 && imc < 24.9) {
      resultado = "Normal (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 25 && imc < 29.9) {
      resultado = "Sobrepeso (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 30 && imc < 34.9) {
      resultado = "Obesidade grau I (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 35 && imc < 39.9) {
      resultado = "Obesidade grau II (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 40) {
      resultado = "Obesidade grau III (${imc.toStringAsPrecision(4)})";
    }
  }
}
