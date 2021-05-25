import 'package:flutter/material.dart';
import 'package:imc_app/screens/calc_controller.dart';
import 'package:imc_app/screens/result_screen.dart';

class CalcScreen extends StatefulWidget {
  @override
  _CalcScreenState createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  final controllador = CalcController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Peso (kg)",
                  labelStyle: TextStyle(color: Colors.green)),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 25.0),
              controller: controllador.pesoController,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Altura (cm)",
                  labelStyle: TextStyle(color: Colors.green)),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 25.0),
              controller: controllador.alturaController,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: TextButton(
                onPressed: () {
                  controllador.calculo();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultScreen(
                          result: controllador,
                        ),
                      ));
                },
                child: Text(
                  "CALCULAR",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.amber)),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
