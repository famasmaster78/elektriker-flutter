import 'package:flutter/material.dart';

class KabelDimensionering extends StatefulWidget {
  const KabelDimensionering({super.key});

  @override
  State<KabelDimensionering> createState() => _KabelDimensioneringState();
}

class _KabelDimensioneringState extends State<KabelDimensionering> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Kabel dimensionering"),
        ),
        body: const Center(
          child: Text("KabelDimensionering here!"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Icon(Icons.play_arrow_rounded),
        ));
  }
}
