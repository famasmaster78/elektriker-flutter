import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Formler extends StatelessWidget {
  Formler({Key? key}) : super(key: key);

  // List of all the formulas, with title, equation and description
  final formulaList = <Formula>[
    Formula("Spænding", r'U = R \cdot I',
        "Spænding er en måling af det elektriske potentiale, der eksisterer mellem to punkter. Det er ofte målt i volt og er den kraft, der skal bruges til at skubbe elektroner gennem et ledningsnet."),
    Formula("Strøm", r'I = \frac U R',
        "Strøm er en måling af den mængde elektroner, der passerer gennem et ledningsnet i en given tid. Det er ofte målt i ampere."),
    Formula("Modstand", r'R = \frac U I',
        "Modstand er en måling af, hvor meget et objekt eller et materiale blokerer for elektrisk strøm. Det er ofte målt i ohm."),
    Formula("Effekt", r'P = U \cdot I',
        "Effekt er en måling af, hvor meget energi der bruges til at flytte elektroner gennem et ledningsnet. Det er ofte målt i watt."),
    Formula("Kapacitans", r'C = \frac Q U',
        "Kapacitans er en måling af, hvor meget elektrisk ladning der kan opbevares i et objekt. Det er ofte målt i farad."),
    Formula("Induktans", r'L = \frac U I',
        "Induktans er en måling af, hvor meget magnetisk energi der er opbevaret i et objekt. Det er ofte målt i henry."),
    Formula("Frekvens", r'f = \frac 1 T',
        "Frekvens er en måling af, hvor mange gange noget sker i en given tidsperiode. Det er ofte målt i hertz."),
    Formula("Vinkelhastighed", r'w = 2 \cdot π \cdot f',
        "Vinkelhastighed er en måling af, hvor hurtigt noget roterer. Det er ofte målt i radianer per sekund."),
    Formula("Reaktans", r'X = \frac U I',
        "Reaktans er en måling af, hvor meget modstand der er i et objekt, der er forårsaget af en vekselstrøm. Det er ofte målt i ohm."),
    Formula("Impedans", r'Z = \frac U I',
        "Impedans er en måling af, hvor meget modstand der er i et objekt, der er forårsaget af en vekselstrøm. Det er ofte målt i ohm."),
    Formula("Faseforskydning", r'phi = \arctan(\frac X R)',
        "Faseforskydning er en måling af, hvor meget en vekselstrøm er forsinket i forhold til en anden vekselstrøm. Det er ofte målt i grader."),
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
            child: MasonryGridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              itemCount: formulaList.length,
              itemBuilder: (context, index) {
                return FormelGridItem(
                  title: formulaList[index].title,
                  equation: formulaList[index].equation,
                  description: formulaList[index].description,
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
