import 'package:elektriker_app/pages/formler.dart';
import 'package:flutter/material.dart';

import 'kabeldimensionering.dart';
import 'ordforklaringer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 500),
            child: GridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                /* Kabel dimensionering */
                HomeGridItem(
                  title: "Kabel dimensionering",
                  subtitle: "Her kan du dimensionere kabler",
                  icon: Icons.cable,
                  color: const Color.fromRGBO(200, 230, 201, 1),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const KabelDimensionering()),
                    );
                  },
                ),
                /* Formler */
                HomeGridItem(
                  title: "Formler",
                  subtitle: "Her kan du se formler",
                  icon: Icons.calculate,
                  color: const Color.fromRGBO(187, 222, 251, 1),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Formler()),
                    );
                  },
                ),

                // Ord forklaringer
                HomeGridItem(
                  title: "Ord forklaringer",
                  subtitle: "Her kan du se ord forklaringer",
                  icon: Icons.book,
                  color: const Color.fromRGBO(255, 204, 128, 1),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OrdForklaringer()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Grid item
class HomeGridItem extends StatelessWidget {
  // Parameters
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;

  // On tap function
  final Function? onTap;

  const HomeGridItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.color = const Color.fromRGBO(200, 230, 201, 1),
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: InkWell(
        onTap: () {
          onTap!();
        },
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Icon(icon)),
              ListTile(
                /* leading: Icon(Icons.calculate), */
                title: Text(title),
                subtitle: Text(subtitle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
