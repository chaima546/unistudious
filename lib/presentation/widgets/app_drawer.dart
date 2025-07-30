import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text("Jean Dupont"),
            accountEmail: Text("jean.dupont@example.com"),
            currentAccountPicture: CircleAvatar(
              child: Text("JD", style: TextStyle(fontSize: 24)),
            ),
            decoration: BoxDecoration(color: Colors.deepPurple),
          ),
          DrawerItem(icon: Icons.dashboard, title: 'Tableau de bord'),
          DrawerItem(icon: Icons.book, title: 'Mes cours'),
          DrawerItem(icon: Icons.calendar_today, title: 'Calendrier'),
          DrawerItem(icon: Icons.people, title: 'Présences'),
          DrawerItem(icon: Icons.group, title: 'Groupes'),
          DrawerItem(icon: Icons.folder, title: 'Ressources'),
          DrawerItem(icon: Icons.message, title: 'Messagerie'),
          DrawerItem(icon: Icons.notifications, title: 'Notifications'),
          DrawerItem(icon: Icons.settings, title: 'Paramètres'),
          Divider(),
          DrawerItem(icon: Icons.logout, title: 'Déconnexion'),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String title;
  const DrawerItem({required this.icon, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        // TODO: Add navigation logic
        Navigator.pop(context); // Close drawer when item is tapped
      },
    );
  }
}