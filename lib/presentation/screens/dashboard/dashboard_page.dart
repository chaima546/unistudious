import 'package:flutter/material.dart';
import 'package:unistudious/data/models/academy.dart';
import '../../providers/academy_provider.dart';
import '../../widgets/academy_card.dart';
import '../../widgets/course_progress_card.dart';
import '../../widgets/deadline_card.dart';
import '../../widgets/activity_feed_item.dart';
import '../../widgets/app_drawer.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  // Instantiate the provider
  static final AcademyProvider academyProvider = AcademyProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unistudious'),
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notification button press
            },
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dynamic Academies Section
            _buildSectionTitle("Mes académies"),
            const SizedBox(height: 8),
            SizedBox(
              height: 150,
              child: FutureBuilder<List<Academy>>(
                future: academyProvider.getAcademies(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  }

                  final academies = snapshot.data ?? [];

                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: academies.length,
                    itemBuilder: (context, index) {
                      final academy = academies[index];
                      return AcademyCard(
                        name: academy.name,
                        courseCount: academy.courseCount,
                        onTap: () => _handleAcademyTap(context, academy),
                      );
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 24),

            // Mes cours en cours section
            _buildSectionTitle("Mes cours en cours"),
            const SizedBox(height: 8),
            const CourseProgressCard(
              academyName: 'Piuma Academy',
              courseName: 'Calcul Intégral',
              teacher: 'Prof. Dubois',
              progress: 0.68,
              nextLesson: 'Intégrales de fonctions trigonométriques',
            ),
            const SizedBox(height: 12),
            const CourseProgressCard(
              academyName: 'Agency Academy',
              courseName: 'Chimie Organique',
              teacher: 'Prof. Martin',
              progress: 0.42,
              nextLesson: 'Les alcènes et les alcynes',
            ),
            const SizedBox(height: 12),
            const CourseProgressCard(
              academyName: 'Lycée Pasteur',
              courseName: 'Littérature Française',
              teacher: 'Prof. Bernard',
              progress: 0.85,
              nextLesson: 'Les courants littéraires du XXe siècle',
            ),
            const SizedBox(height: 24),

            // Mes prochaines échéances section
            _buildSectionTitle("Mes prochaines échéances"),
            const SizedBox(height: 8),
            const DeadlineCard(
              title: 'Devoir de Calcul Intégral',
              dueDate: 'Aujourd\'hui',
              academy: 'Piuma Academy',
              description: 'Exercices d\'intégration par parties',
            ),
            const SizedBox(height: 12),
            const DeadlineCard(
              title: 'Présentation Chimie',
              dueDate: 'Dans 3 jours',
              academy: 'Agency Academy',
              description: 'Présentation sur les composés aromatiques',
            ),
            const SizedBox(height: 12),
            const DeadlineCard(
              title: 'Dissertation Littérature',
              dueDate: 'Dans 7 jours',
              academy: 'Lycée Pasteur',
              description: 'Analyse de l\'œuvre "Les Misérables"',
            ),
            const SizedBox(height: 24),

            // Activité récente section
            _buildSectionTitle("Activité récente"),
            const SizedBox(height: 8),
            const ActivityFeedItem(
              userInitials: 'TM',
              userName: 'Thomas Martin',
              timeAgo: 'Il y a 1h',
              content: 'a posté dans le groupe Chimie Organique\n\nEst-ce que quelqu\'un a compris la réaction d\'estérification ? J\'ai du mal avec le mécanisme...',
            ),
            const SizedBox(height: 12),
            const ActivityFeedItem(
              userInitials: 'PD',
              userName: 'Prof. Dubois',
              timeAgo: 'Il y a 3h',
              content: 'a ajouté une nouvelle ressource au cours Calcul Intégral\n\nCours_Integrales_Partie2.pdf',
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle FAB press
        },
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.deepPurple,
      ),
    );
  }

  void _handleAcademyTap(BuildContext context, Academy academy) {
    // Implement navigation or action when an academy is tapped
  }
}