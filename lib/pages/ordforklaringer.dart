import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
        child: ListView(
          children: const [
            Card(
              child: ListTile(
                title: Text("OB"),
                subtitle: Text("Overbelastningsbeskyttese"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("KB"),
                subtitle: Text("Kortslutningsbeskyttelse"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("FBE"),
                subtitle: Text("Fejlbeskyttelse"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("sf"),
                subtitle: Text("Samtidighedsfaktor (Mindre end eller lig med 1)"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("uf"),
                subtitle: Text("Udvidelsesfaktor (Større end eller lig med 1)"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Itil"),
                subtitle: Text("Tilsluttet strøm"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Ib"),
                subtitle: Text("Belastningsstrøm"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Ist"),
                subtitle: Text("Startstrøm"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("IOB"),
                subtitle: Text("Overstrømsbeskyttelsens minimumkrav til strømværdi for leder."),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("IZ30"),
                subtitle: Text("Strømværdi ved 30◦C"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("In"),
                subtitle: Text("Mærkestrøm/Indstillingsstrøm for beskyttelsesudstyr."),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("IZkor"),
                subtitle: Text("korrigeret Strømværdi for kabel(IZkor = IZ30 · kt · ks)"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("kt"),
                subtitle: Text("Korrekt ionsfaktor for temperatur"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("ks"),
                subtitle: Text("Korretion for samlet fremføring"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("BG"),
                subtitle: Text("Belastningsgrad"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("OPL"),
                subtitle: Text("Installationsm ̊ade"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("∆U"),
                subtitle: Text("Spændingsfald"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Ikmax"),
                subtitle: Text("Største prospektive kortslutningsstrøm"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Ikmin"),
                subtitle: Text("Mindste kortslutningsstrøm"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("R"),
                subtitle: Text("Ohmsk modstand"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("X"),
                subtitle: Text("Induktiv modstand"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Z"),
                subtitle: Text("Impedans: √R2 + X2"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
