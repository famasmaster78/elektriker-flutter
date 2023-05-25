import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

class OrdForklaringer extends StatelessWidget {
  const OrdForklaringer({super.key});

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
            child: ListView(
              children: [
                const Card(
                  child: ListTile(
                    title: Text("OB"),
                    subtitle: Text("Overbelastningsbeskyttese"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("KB"),
                    subtitle: Text("Kortslutningsbeskyttelse"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("FBE"),
                    subtitle: Text("Fejlbeskyttelse"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("sf"),
                    subtitle:
                        Text("Samtidighedsfaktor (Mindre end eller lig med 1)"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("uf"),
                    subtitle:
                        Text("Udvidelsesfaktor (Større end eller lig med 1)"),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Math.tex(r'I_{til}'),
                    subtitle: const Text("Tilsluttet strøm"),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Math.tex(r'I_{b}'),
                    subtitle: const Text("Belastningsstrøm"),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Math.tex(r'I_{st}'),
                    subtitle: const Text("Startstrøm"),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Math.tex(r'I_{OB}'),
                    subtitle: const Text(
                        "Overstrømsbeskyttelsens minimumkrav til strømværdi for leder."),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Math.tex("I_{Z30}"),
                    subtitle: const Text("Strømværdi ved 30◦C"),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Math.tex("I_n"),
                    subtitle: const Text(
                        "Mærkestrøm/Indstillingsstrøm for beskyttelsesudstyr."),
                  ),
                ),
                Card(
                  child: ListTile(
                      title: Math.tex("I_{Zkor}"),
                      subtitle: RichText(
                        text: TextSpan(
                          text: r'Korrigeret Strømværdi for kabel: ',
                          style: const TextStyle(color: Colors.black),
                          children: [
                            WidgetSpan(
                              child: Math.tex(
                                  r'I_{Zkor} = I_{Z30} \cdot k_t \cdot k_s'),
                            ),
                          ],
                        ),
                      )),
                ),
                const Card(
                  child: ListTile(
                    title: Text("kt"),
                    subtitle: Text("Korrekt ionsfaktor for temperatur"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("ks"),
                    subtitle: Text("Korrektion for samlet fremføring"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("BG"),
                    subtitle: Text("Belastningsgrad"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("OPL"),
                    subtitle: Text("Installations måde"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("∆U"),
                    subtitle: Text("Spændingsfald"),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Math.tex("I_{k_{max}}"),
                    subtitle:
                        const Text("Største prospektive kortslutningsstrøm"),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Math.tex("I_{k_{min}}"),
                    subtitle: const Text("Mindste kortslutningsstrøm"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("R"),
                    subtitle: Text("Ohmsk modstand"),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text("X"),
                    subtitle: Text("Induktiv modstand"),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: const Text("Z"),
                    subtitle: Math.tex(r'Impedans: \sqrt{R^2 + X^2}'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
