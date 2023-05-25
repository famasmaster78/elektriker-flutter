import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class OrdForklaringer extends StatelessWidget {
  OrdForklaringer({Key? key}) : super(key: key);

  // Lav en liste med alle forkortelserne og deres forklaringer
  // Brug MasonryGridView.count til at vise dem
  // Brug Math.tex til at vise formlerne
  final ordList = <OrdForklaring>[
    const OrdForklaring(title: "OB", description: "Overbelastningsbeskyttese"),
    const OrdForklaring(title: "KB", description: "Kortslutningsbeskyttelse"),
    const OrdForklaring(title: "FBE", description: "Fejlbeskyttelse"),
    const OrdForklaring(
        title: "sf",
        description: "Samtidighedsfaktor (Mindre end eller lig med 1)"),
    const OrdForklaring(
        title: "uf",
        description: "Udvidelsesfaktor (Større end eller lig med 1)"),
    const OrdForklaring(title: r'I_{til}', description: "Tilsluttet strøm"),
    const OrdForklaring(title: r'I_{b}', description: "Belastningsstrøm"),
    const OrdForklaring(title: r'I_{st}', description: "Startstrøm"),
    const OrdForklaring(
        title: r'I_{OB}',
        description:
            "Overstrømsbeskyttelsens minimumkrav til strømværdi for leder."),
    const OrdForklaring(title: r'I_{Z30}', description: "Strømværdi ved 30◦C"),
    const OrdForklaring(
        title: r'I_{n}',
        description: "Mærkestrøm/Indstillingsstrøm for beskyttelsesudstyr."),
    const OrdForklaring(
        title: r'I_{Zkor}',
        description:
            r'Korrigeret Strømværdi for kabel: $I_{Zkor} = I_{Z30} \cdot k_t \cdot k_s$'),
    const OrdForklaring(
        title: "kt", description: "Korrekt ionsfaktor for temperatur"),
    const OrdForklaring(
        title: "ks", description: "Korrektion for samlet fremføring"),
    const OrdForklaring(title: "BG", description: "Belastningsgrad"),
    const OrdForklaring(title: "OPL", description: "Installations måde"),
    const OrdForklaring(title: r'∆U', description: "Spændingsfald"),
    const OrdForklaring(
        title: r'I_{k_{max}}',
        description: "Største prospektive kortslutningsstrøm"),
    const OrdForklaring(
        title: r'I_{k_{min}}', description: "Mindste kortslutningsstrøm"),
    const OrdForklaring(title: "R", description: "Ohmsk modstand"),
    const OrdForklaring(title: "X", description: "Induktiv modstand"),
    const OrdForklaring(
        title: "Z", description: r'Impedans: $\sqrt{R^2 + X^2}$'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ord forklaringer"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // Liste med disse ord forklaringer
        /* 
          OB: Overbelastningsbeskyttese
          KB: Kortslutningsbeskyttelse
          FBE: Fejlbeskyttelse
          sf: Samtidighedsfaktor (Mindre end eller lig med 1)
          uf: Udvidelsesfaktor (Større end eller lig med 1)
          Itil Tilsluttet strøm
          Ib Belastningsstrøm
          Ist Startstrøm
          IOB Overstrømsbeskyttelsens minimumkrav til strømværdi for leder.
          IZ30 Strømværdi ved 30◦C
          In Mærkestrøm/Indstillingsstrøm for beskyttelsesudstyr.
          IZkor korrigeret Strømværdi for kabel(IZkor = IZ30 · kt · ks)
          kt Korrektionsfaktor for temperatur
          ks Korrektion for samlet fremføring
          BG Belastningsgrad
          OPL Installationsm ̊ade
          ∆U Spændingsfald
          Ikmax Største prospektive kortslutningsstrøm
          Ikmin Mindste kortslutningsstrøm
          R Ohmsk modstand
          X Induktiv modstand
          Z Impedans: √
          R2 + X2
        */
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 500),
            child: MasonryGridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              itemCount: ordList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Math.tex(ordList[index].title),
                    subtitle: Text(ordList[index].description),
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

// Opret klasse til ord forklaringer
class OrdForklaring {
  final String title;
  final String description;

  const OrdForklaring({required this.title, required this.description});
}
