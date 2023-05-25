import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

class Formler extends StatelessWidget {
  Formler({Key? key}) : super(key: key);

  // List of all the formulas, with title, equation and description
  final FormList = <Formula>[
    Formula("Spænding", r'U = R \cdot I',
        "Udregning af spænding, når modstand og strøm er kendt"),
    Formula("Strøm", r'I = \frac U R',
        "Udregning af strøm, når spænding og modstand er kendt"),
    Formula("Modstand", r'R = \frac U I',
        "Udregning af modstand, når spænding og strøm er kendt"),
    Formula("Effekt", r'P = U \cdot I',
        "Udregning af effekt, når spænding og strøm er kendt"),
    Formula("Kapacitans", r'C = \frac Q U',
        "Udregning af kapacitans, når ladning og spænding er kendt"),
    Formula("Induktans", r'L = \frac U I',
        "Udregning af induktans, når spænding og strøm er kendt"),
    Formula("Frekvens", r'f = \frac 1 T',
        "Udregning af frekvens, når periodetid er kendt"),
    Formula("Vinkelhastighed", r'w = 2 \cdot π \cdot f',
        "Udregning af vinkelhastighed, når frekvens er kendt"),
    Formula("Reaktans", r'X = \frac U I',
        "Udregning af reaktans, når spænding og strøm er kendt"),
    Formula("Impedans", r'Z = \frac U I',
        "Udregning af impedans, når spænding og strøm er kendt"),
    Formula("Faseforskydning", r'phi = \arctan(\frac X R)',
        "Udregning af faseforskydning, når reaktans og modstand er kendt"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formler"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 500),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: FormList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: FormelGridItem(
                    title: FormList[index].title,
                    equation: FormList[index].equation,
                    description: FormList[index].description,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class FormelGridItem extends StatelessWidget {
  final String title;
  final String equation;
  final String description;

  const FormelGridItem({
    Key? key,
    required this.title,
    required this.equation,
    this.description = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Math.tex(equation),
            const SizedBox(height: 20),
            Text(description)
          ],
        ),
      ),
    );
  }
}

// Class for a single item in the grid
class Formula {
  String title;
  String equation;
  String description;

  Formula(this.title, this.equation, this.description);
}
