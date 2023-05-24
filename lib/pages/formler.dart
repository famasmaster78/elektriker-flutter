import 'package:flutter/material.dart';
import 'package:flutter_math_fork/ast.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:flutter_math_fork/tex.dart';

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
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 500),
            child: GridView.count(
              scrollDirection: Axis.vertical,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 2,
              childAspectRatio: 10 / 8,
              children: const [
                FormelGridItem(
                  title: "Spænding",
                  equation: r'U = R * I',
                  description:
                      "Udregning af spænding, når modstand og strøm er kendt",
                ),
                FormelGridItem(
                  title: "Strøm",
                  equation: r'I = \frac U R',
                  description:
                      "Udregning af strøm, når spænding og modstand er kendt",
                ),
                FormelGridItem(
                  title: "Modstand",
                  equation: r'R = \frac U I',
                  description:
                      "Udregning af modstand, når spænding og strøm er kendt",
                ),
                FormelGridItem(
                  title: "Effekt",
                  equation: r'P = U * I',
                  description:
                      "Udregning af effekt, når spænding og strøm er kendt",
                ),
                FormelGridItem(
                  title: "Kapacitans",
                  equation: r'C = \frac Q U',
                  description:
                      "Udregning af kapacitans, når ladning og spænding er kendt",
                ),
                FormelGridItem(
                  title: "Induktans",
                  equation: r'L = \frac U I',
                  description:
                      "Udregning af induktans, når spænding og strøm er kendt",
                ),
                FormelGridItem(
                  title: "Frekvens",
                  equation: r'f = \frac 1 T',
                  description: "Udregning af frekvens, når periodetid er kendt",
                ),
                FormelGridItem(
                  title: "Vinkelhastighed",
                  equation: r'w = 2 * π * f',
                  description:
                      "Udregning af vinkelhastighed, når frekvens er kendt",
                ),
                FormelGridItem(
                  title: "Reaktans",
                  equation: r'X = \frac U I',
                  description:
                      "Udregning af reaktans, når spænding og strøm er kendt",
                ),
                FormelGridItem(
                  title: "Impedans",
                  equation: r'Z = \frac U I',
                  description:
                      "Udregning af impedans, når spænding og strøm er kendt",
                ),
                FormelGridItem(
                  title: "Faseforskydning",
                  equation: r'phi = arctan(\frac X R)',
                  description:
                      "Udregning af faseforskydning, når reaktans og modstand er kendt",
                ),
              ],
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
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Math.tex(equation),
            SizedBox(height: 20),
            Text(description)
          ],
        ),
      ),
    );
  }
}
