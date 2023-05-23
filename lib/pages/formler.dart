import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Formler extends StatelessWidget {
  const Formler({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formler"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            Card(
              child: ListTile(
                title: Text("Ohms lov"),
                subtitle: Text("U = R * I"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Effekt"),
                subtitle: Text("P = U * I"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Kapacitans"),
                subtitle: Text("C = Q / U"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Induktans"),
                subtitle: Text("L = U / I"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Frekvens"),
                subtitle: Text("f = 1 / T"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Vinkelhastighed"),
                subtitle: Text("w = 2 * pi * f"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Reaktans"),
                subtitle: Text("X = U / I"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Impedans"),
                subtitle: Text("Z = U / I"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Faseforskydning"),
                subtitle: Text("phi = arctan(X / R)"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
