import 'package:practica_clase/models/product_model.dart';
import 'package:practica_clase/presentation/services/product_services.dart';
import 'package:flutter/material.dart';

class PeticionScreens extends StatelessWidget {
  const PeticionScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hola Peticion")),
      body: FutureBuilder(
        future: ProductService().getProduct(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator(),);
          } else if(snapshot.hasError){
            return Center(child: Text("No disponible por ahora"),);
          } else if (snapshot.hasData){
            final List<ProducModel> data = snapshot.data ?? [];
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, i){
                return ListTile(
                  title: Text(data[i].title),
                  subtitle: Text(data[i].description),
                );
              }
            );
          } else {
            return Center(child: Text("No hat datos"),);
          }
        }
      ),
    );
  }
}