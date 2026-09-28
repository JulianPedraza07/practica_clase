import 'package:practica_clase/config/router/router_model.dart';
import 'package:practica_clase/presentation/peticion/screens/peticion_screen.dart';
import 'package:practica_clase/presentation/sceen.dart';



const List<RouterModel> router = [
  RouterModel(
    title: "Button", 
    description: "Vista con todos los botones", 
    name: "Button", 
    widget: BotonesScreen()
  ),
  RouterModel(
    title: "Text", 
    description: "Vista con textos modificados", 
    name: "Text", 
    widget: TextoScreen()
  ),
  RouterModel(
    title: "Text", 
    description: "Peticiones API", 
    name: "Text", 
    widget: PeticionScreens()
  )
];