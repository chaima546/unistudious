import 'package:flutter/material.dart';
import '../../widgets/academy_card.dart'; 
import '../../widgets/course_progress_card.dart';
import '../../widgets/deadline_card.dart';
import '../../widgets/activity_feed_item.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unistudious'),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: Drawer(
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
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Mes académies", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  AcademyCard(name: 'Piuma', courseCount: 2),
                  AcademyCard(name: 'Agency', courseCount: 1),
                  AcademyCard(name: 'Lycée', courseCount: 3),
                ],
              ),
            ),
            const SizedBox(height: 24),

            const Text("Mes cours en cours", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const CourseProgressCard(
              academyName: 'Piuma Academy',
              courseName: 'Calcul Intégral',
              teacher: 'Prof. Dubois',
              progress: 0.68,
              nextLesson: 'Intégrales de fonctions trigonométriques',
            ),
            const CourseProgressCard(
              academyName: 'Agency Academy',
              courseName: 'Chimie Organique',
              teacher: 'Prof. Martin',
              progress: 0.42,
              nextLesson: 'Les alcènes et les alcynes',
            ),
            const CourseProgressCard(
              academyName: 'Lycée Pasteur',
              courseName: 'Littérature Française',
              teacher: 'Prof. Bernard',
              progress: 0.85,
              nextLesson: 'Les courants littéraires du XXe siècle',
            ),
            const SizedBox(height: 24),

            const Text("Mes prochaines échéances", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const DeadlineCard(
              title: 'Devoir de Calcul Intégral',
              dueDate: 'Aujourd\'hui',
              academy: 'Piuma Academy',
              description: 'Exercices d\'intégration par parties',
            ),
            const DeadlineCard(
              title: 'Présentation Chimie',
              dueDate: 'Dans 3 jours',
              academy: 'Agency Academy',
              description: 'Présentation sur les composés aromatiques',
            ),
            const DeadlineCard(
              title: 'Dissertation Littérature',
              dueDate: 'Dans 7 jours',
              academy: 'Lycée Pasteur',
              description: 'Analyse de l\'œuvre "Les Misérables"',
            ),
            const SizedBox(height: 24),

            const Text("Activité récente", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const ActivityFeedItem(
              userInitials: 'TM',
              userName: 'Thomas Martin',
              timeAgo: 'Il y a 1h',
              content: 'a posté dans le groupe Chimie Organique\n\nEst-ce que quelqu\'un a compris la réaction d\'estérification ? J\'ai du mal avec le mécanisme...',
            ),
            const ActivityFeedItem(
              userInitials: 'PD',
              userName: 'Prof. Dubois',
              timeAgo: 'Il y a 3h',
              content: 'a ajouté une nouvelle ressource au cours Calcul Intégral\n\nCours_Integrales_Partie2.pdf',
            ),
          ],
        ),
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
        // TODO: Ajouter navigation
      },
    );
  }
}
