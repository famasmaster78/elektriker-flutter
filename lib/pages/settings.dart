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
            title: Text("Indstillinger"),
            subtitle: Text("Her kan du ændre indstillinger"),
            leading: Icon(Icons.settings),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
          ListTile(
            title: Text("Om os"),
            subtitle: Text("Her kan du læse om os"),
            leading: Icon(Icons.info),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, '/about');
            },
          ),
          ListTile(
            title: Text("Kontakt os"),
            subtitle: Text("Her kan du kontakte os"),
            leading: Icon(Icons.contact_page),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, '/contact');
            },
          ),
          ListTile(
            title: Text("Log ud"),
            subtitle: Text("Her kan du logge ud"),
            leading: Icon(Icons.logout),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
        ]),
      ),
    );
  }
}
