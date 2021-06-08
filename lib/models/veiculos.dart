import 'package:flutter/material.dart';

class Veiculos{
  final String id;
  final String id_montadora;
  final String nome;
  final double valor;
  final String imagem; //caminho da imagem na web

  const Veiculos({
    required this.id,
    required this.id_montadora,
    required this.nome,
    required this.valor,
    required this.imagem,
    
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }

}
