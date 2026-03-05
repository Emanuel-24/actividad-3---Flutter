import 'package:flutter/material.dart';
import 'caja_info.dart';

// Layout principal de la tarjeta.
// Su responsabilidad: dividir la pantalla en columna izquierda e imagen.
class RecetaCard extends StatelessWidget {
  const RecetaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ── Columna izquierda ──
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Strawberry Pavlova',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Pavlova is a meringue-based dessert named after the Russian '
                  'ballerina Anna Pavlova. Pavlova features a crisp crust and soft, '
                  'light inside, topped with fruit and whipped cream. lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula,' 
                  'nisi a fringilla cursus, nisl erat efficitur nisi, at convallis enim ligula in nunc'
                  'lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula,',
                  
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: CajaInfo(),
                ),
              ],
            ),
          ),

          const SizedBox(width: 16),

          // ── Imagen derecha ──
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/background.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}