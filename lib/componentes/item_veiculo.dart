import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_veiculos/models/veiculos.dart';

import '../models/veiculos.dart';

class ItemVeiculo extends StatelessWidget {
  final Veiculos veiculo;

  const ItemVeiculo(this.veiculo);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => (print('Voce apertou no veiculo')),
      splashColor: Colors.green.withAlpha(30),
      child: Card(
        child: Center(
          child: ListTile(
            leading: Icon(Icons.album_rounded),
            title: Text(
              veiculo.nome,
              textAlign: TextAlign.left,
              style: GoogleFonts.abel(fontSize: 36),
            ),
          ),
        ),
        elevation: 2.0,
        color: Colors.white12,
      ),
    );
  }
}
