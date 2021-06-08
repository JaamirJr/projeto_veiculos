import 'package:flutter/material.dart';
import 'package:projeto_veiculos/mockdata/veiculos_mock.dart';

import 'package:projeto_veiculos/componentes/item_veiculo.dart';

import '../models/montadora.dart';

class TelaVeiculos extends StatelessWidget {
  final Montadora montadora;

  const TelaVeiculos(this.montadora);

  List <ItemVeiculo> _listaVeiculos(){
    List <ItemVeiculo> veiculos = [];
    List a = VEICULOS_MOCK.map((e){
            return e;
        }).toList();
    for(var i = 0; i<a.length; i++){
      if(a[i].id_montadora == montadora.id){
        veiculos.add(ItemVeiculo(a[i]));
      }
    }
    return veiculos;
  }

  @override
  Widget build(BuildContext context) {
    
    var gridView = GridView(
        padding: EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 400, //Cada elemento da tela tenha no maximo 200 pontos
          childAspectRatio: 1, //proporção de cada elemento na tela
          crossAxisSpacing: 30, //colocando espaçamento cruzado 
          mainAxisExtent: 75, //tamanho do componente
          mainAxisSpacing: 8, //espaço nos eixos
        ),
        children: _listaVeiculos(),

        
      );
    return Scaffold(
      appBar: AppBar(
        title: Text("Veículos"),
      ),
      body: gridView
    );
  }
}
