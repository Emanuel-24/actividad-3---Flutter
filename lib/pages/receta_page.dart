import 'package:flutter/material.dart';
import '../widgets/receta_card.dart';

// La pantalla completa. Su única responsabilidad es
// armar el Scaffold y centrar la tarjeta.
class RecetaPage extends StatelessWidget {
  const RecetaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: const Center(
        child: SingleChildScrollView(
          child: RecetaCard(),
        ),
      ),
    );
  }
}