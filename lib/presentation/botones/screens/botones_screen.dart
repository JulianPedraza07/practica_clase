import 'package:flutter/material.dart';

class BotonesScreen extends StatelessWidget {
  const BotonesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          runAlignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),

            ElevatedButton(
              onPressed: null,
              child: const Text('Elevated Button Disabled'),
            ),

            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Elevated Icon'),
            ),

            FilledButton(
              onPressed: () {},
              child: const Text('Filled Button'),
            ),

            FilledButton(
              onPressed: null,
              child: const Text('Filled Button Disabled'),
            ),

            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Filled Icon'),
            ),

            OutlinedButton(
              onPressed: () {},
              child: const Text('Outline Button'),
            ),

            OutlinedButton(
              onPressed: null,
              child: const Text('Outline Button Disabled'),
            ),

            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Outline Icon'),
            ),

            TextButton(
              onPressed: () {},
              child: const Text('Text Button'),
            ),

            TextButton(
              onPressed: null,
              child: const Text('Text Button Disabled'),
            ),

            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Text Icon'),
            ),

            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_outlined),
            ),

            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
            ),
          ],
        ),
      ),
    );
  }
}
