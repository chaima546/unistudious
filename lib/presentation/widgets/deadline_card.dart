import 'package:flutter/material.dart';

class DeadlineCard extends StatelessWidget {
  final String title;
  final String dueDate;
  final String academy;
  final String description;

  const DeadlineCard({
    super.key,
    required this.title,
    required this.dueDate,
    required this.academy,
    required this.description,
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
            Text(title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                )),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.calendar_today, size: 16, color: Colors.deepPurple),
                const SizedBox(width: 6),
                Text(
                  dueDate,
                  style: const TextStyle(color: Colors.deepPurple),
                ),
                const SizedBox(width: 12),
                Icon(Icons.school, size: 16, color: Colors.deepPurple),
                const SizedBox(width: 6),
                Text(
                  academy,
                  style: const TextStyle(color: Colors.deepPurple),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              description,
              style: const TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
