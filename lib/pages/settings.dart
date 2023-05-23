import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(children: [
          ListTile(
            title: const Text("Indstillinger"),
            subtitle: const Text("Her kan du ændre indstillinger"),
            leading: const Icon(Icons.settings),
            trailing: const Icon(
              Icons.arrow_right,
              size: 32,
            ),
            onTap: () {
              /* Navigator.pushNamed(context, '/settings'); */
            },
          ),
          ListTile(
            title: const Text("Om os"),
            subtitle: const Text("Her kan du læse om os"),
            leading: const Icon(Icons.info),
            trailing: const Icon(
              Icons.arrow_right,
              size: 32,
            ),
            onTap: () {
              /* Navigator.pushNamed(context, '/about'); */
            },
          ),
          ListTile(
            title: const Text("Kontakt os"),
            subtitle: const Text("Her kan du kontakte os"),
            leading: const Icon(Icons.contact_page),
            trailing: const Icon(
              Icons.arrow_right,
              size: 32,
            ),
            onTap: () {
              /* Navigator.pushNamed(context, '/contact'); */
            },
          ),
          ListTile(
            title: const Text("Log ud"),
            subtitle: const Text("Her kan du logge ud"),
            leading: const Icon(Icons.logout),
            trailing: const Icon(
              Icons.arrow_right,
              size: 32,
            ),
            onTap: () {
              /* Navigator.pushNamed(context, '/login'); */
            },
          ),
        ]),
      ),
    );
  }
}
