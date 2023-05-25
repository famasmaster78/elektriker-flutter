import 'package:elektriker_app/main.dart';
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
            child: Align(
              alignment: Alignment.bottomCenter,
              child: GridView.count(
                primary: false,
                reverse: true,
                scrollDirection: Axis.vertical,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                children: [
                  /* Kabel dimensionering */
                  HomeGridItem(
                    title: "Kabel dimensionering",
                    subtitle: "Her kan du dimensionere kabler",
                    icon: Icons.cable,
                    color: !context.isDarkMode
                        ? Colors.green[100]!
                        : Colors.lightGreen[900]!,
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
                    color: !context.isDarkMode
                        ? Colors.blue[100]!
                        : Colors.blueGrey[800]!,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Formler()),
                      );
                    },
                  ),

                  // Ord forklaringer
                  HomeGridItem(
                    title: "Ordbog",
                    subtitle: "Her kan du se ord forklaringer",
                    icon: Icons.book,
                    color: !context.isDarkMode
                        ? Colors.orange[100]!
                        : Colors.orange[900]!,
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
              Expanded(
                  child: Icon(
                icon,
                size: 56,
              )),
              ListTile(
                /* leading: Icon(Icons.calculate), */
                title: Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(subtitle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
