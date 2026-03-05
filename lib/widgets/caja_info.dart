import 'package:flutter/material.dart';
import 'item_stat.dart';

// Caja con borde rojo. Su responsabilidad:
// mostrar las estrellas, reseñas y los 3 datos de la receta.
class CajaInfo extends StatelessWidget {
  const CajaInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red, width: 2),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
        children: [
          // ── Estrellas + reseñas ──
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: List.generate(
                  5,
                  (index) => const Icon(Icons.star, color: Colors.black, size: 14),
                ),
              ),
              const Text(
                '170 Reviews',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
            ],
          ),

          const SizedBox(height: 8),
          const Divider(height: 1, color: Colors.grey),
          const SizedBox(height: 8),

          // ── Stats: PREP / COOK / FEEDS ──
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ItemStat(icono: Icons.calendar_today_outlined, etiqueta: 'PREP:',  valor: '25 min'),
              ItemStat(icono: Icons.timer_outlined,           etiqueta: 'COOK:',  valor: '1 hr'),
              ItemStat(icono: Icons.restaurant_outlined,      etiqueta: 'FEEDS:', valor: '4-6'),
            ],
          ),
        ],
      ),
      ),
    );
  }
}