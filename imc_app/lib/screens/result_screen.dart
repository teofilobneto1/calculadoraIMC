import 'package:flutter/material.dart';
import 'package:imc_app/screens/calc_controller.dart';

class ResultScreen extends StatelessWidget {
  final CalcController result;

  const ResultScreen({Key key, this.result}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado"),
      ),
      body: Center(
        child: Container(
          child: Text(
            result.resultado,
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
