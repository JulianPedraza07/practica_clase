import 'package:practica_clase/presentation/texto/widget/texto_widget.dart';
import 'package:flutter/material.dart';

class TextoScreen extends StatelessWidget {
  const TextoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: Text('Hola Texto')),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Text("Tittle", style: TextTheme.displayLarge,),
            Text("H2", style: TextTheme.displayMedium,),
            Text("H3", style: TextTheme.displaySmall,),
            TextoWidget(text: "Texto custom", type: TextType.h4,)          
          ],
        ),
      ),
    );
  }
}