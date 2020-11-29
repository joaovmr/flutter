import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int nota;
  final void Function() reiniciarQuestionario;

  Resultado(this.nota, this.reiniciarQuestionario);

  String get fraseResultado {
    if (nota < 10) {
      return 'Parabens';
    } else if (nota < 20) {
      return 'Nice meu mano';
    } else if (nota < 30) {
      return 'Lançou a braba ein fdp';
    } else {
      return 'Voce Zerou !!!!!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        FlatButton(
          onPressed: reiniciarQuestionario,
          child: Text(
            'Denovo?',
            style: TextStyle(fontSize: 18),
          ),
          textColor: Colors.blue,
        )
      ],
    );
  }
}
