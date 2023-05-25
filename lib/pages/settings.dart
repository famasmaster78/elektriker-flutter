import 'package:elektriker_app/main.dart';
import 'package:elektriker_app/state/settingsModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<SettingsModel>(
          builder: (context, settings, child) => ListView(children: [
            /* ListTile(
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
            ), */
            ListTile(
              title: const Text("Om os"),
              subtitle: const Text("Her kan du læse om os"),
              leading: const Icon(Icons.info),
              trailing: const Icon(
                Icons.arrow_right,
                size: 32,
              ),
              onTap: () async {
                final Uri url = Uri.parse('https://jbgaard.xyz/about');
                if (await canLaunchUrl(url)) {
                  launchUrl(url);
                } else {
                  throw Exception('Could not launch $url');
                }
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
            /* ThemeMode system toggle */
            SwitchListTile(
              title: const Text("System tema"),
              subtitle: const Text(
                  "Hvis denne er slået til benytter du systemets tema"),
              value: settings.themeMode == ThemeMode.system,
              onChanged: (value) {
                value
                    ? settings.UpdateThemeMode(ThemeMode.system)
                    : settings.UpdateThemeMode(ThemeMode.light);
              },
            ),

            /* ThemeMode toggle */
            SwitchListTile(
              title: const Text("Mørkt tema"),
              subtitle:
                  const Text("Her kan du skifte mellem lyst og mørkt tema"),
              value: context.isDarkMode,
              onChanged: (value) {
                settings.themeMode != ThemeMode.system
                    ? settings.ToggleThemeMode()
                    : null;
              },
            ),
          ]),
        ),
      ),
    );
  }
}
