import 'package:practica_clase/config/router/router_app.dart';
// import 'package:practica_clase/presentation/botones/screens/botones_screen.dart';
// import 'package:practica_clase/presentation/texto/screens/texto_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My App')),
      body: ListView.builder(
        itemCount: router.length,
        itemBuilder: (context, i){
          final elemento = router[i];
          return ListTile(
            title: Text(router[i].title),
            subtitle: Text(router[i].description),
            onTap: () {
              Navigator.push(context, 
                MaterialPageRoute(builder: (contex)=> elemento.widget)
              );
            },
          );
        }
      )
    );
  }
}