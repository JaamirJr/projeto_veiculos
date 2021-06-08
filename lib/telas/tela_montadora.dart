

import 'package:flutter/material.dart';
import 'package:projeto_veiculos/mockdata/montadora_mock.dart';
import '../componentes/item_montadora.dart';

class TelaMontadora  extends StatelessWidget {
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Montadoras"),
      ),
      body: GridView(
        padding: EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, //Cada elemento da tela tenha no maximo 200 pontos
          childAspectRatio: 1.5, //proporção de cada elemento na tela
          crossAxisSpacing: 30, //colocando espaçamento cruzado 
          mainAxisExtent: 100, //tamanho do componente
          mainAxisSpacing: 20, //espaço nos eixos
        ),
        children: MONTADORAS_MOCK.map((e){
          
          return ItemMontadora(e);
        }).toList(),
      )
    );
  }
}