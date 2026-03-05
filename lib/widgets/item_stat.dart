import 'package:flutter/material.dart';

// Widget reutilizable para cada estadística (PREP, COOK, FEEDS).
// Se separa porque se instancia 3 veces y podría usarse en otras pantallas.
class ItemStat extends StatelessWidget {
  final IconData icono;
  final String etiqueta;
  final String valor;

  const ItemStat({
    super.key,
    required this.icono,
    required this.etiqueta,
    required this.valor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icono, color: Colors.green, size: 22),
        const SizedBox(height: 4),
        Text(
          etiqueta,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 2),
        Text(valor, style: const TextStyle(fontSize: 13)),
      ],
    );
  }
}