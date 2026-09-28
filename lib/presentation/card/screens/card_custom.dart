import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  const CardCustom({super.key});

  @override
  Widget build(BuildContext context) {

    final themeColor = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: Text("Hola card"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 3.0,
              color: themeColor.primary,
              child: const Padding(
                padding: EdgeInsets.all(32),
                child: Text("Hola card"),
              ),
            ), Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32)),
                side: BorderSide(color: Colors.red)
              ),
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Text("Hola card"),
              ),
            )
          ],
        ),
      ),
    );
  }
}