import 'package:flutter/material.dart';

class CourseProgressCard extends StatelessWidget {
  final String academyName;
  final String courseName;
  final String teacher;
  final double progress;
  final String nextLesson;

  const CourseProgressCard({
    super.key,
    required this.academyName,
    required this.courseName,
    required this.teacher,
    required this.progress,
    required this.nextLesson,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(academyName,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.deepPurple)),
            const SizedBox(height: 8),
            Text(courseName,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            Text('Prof. $teacher', style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 12),
            LinearProgressIndicator(
              value: progress,
              color: Colors.deepPurple,
              backgroundColor: Colors.deepPurple.shade100,
              minHeight: 8,
              borderRadius: BorderRadius.circular(4),
            ),
            const SizedBox(height: 8),
            Text(
              'Progression : ${(progress * 100).toInt()}%',
              style: const TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 8),
            Text(
              'Prochaine leçon : $nextLesson',
              style: const TextStyle(fontSize: 13, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
