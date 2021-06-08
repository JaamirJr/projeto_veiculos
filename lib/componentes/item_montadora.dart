import 'package:flutter/material.dart';

import '../models/montadora.dart';

import '../telas/tela_veiculo.dart';

class ItemMontadora extends StatelessWidget {
  final Montadora montadora;

  void _selecionaVeiculo(BuildContext context) {
    //vamos fazer um push de tela
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return TelaVeiculos(montadora);
    }));
  }

  const ItemMontadora(this.montadora);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selecionaVeiculo(context),
      splashColor: Colors.red,
      child: Container(
        //padding: EdgeInsets.all(15),
        child: Text(montadora.nome, textAlign: TextAlign.center),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
                colors: [montadora.cor.withOpacity(0.5), montadora.cor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
      ),
    );
  }
}
