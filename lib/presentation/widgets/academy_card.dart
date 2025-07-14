import 'package:flutter/material.dart';

class AcademyCard extends StatelessWidget {
  final String name;
  final int courseCount;
  final VoidCallback? onTap;

  const AcademyCard({
    super.key,
    required this.name,
    required this.courseCount,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {}, // Par défaut, ne fait rien
      child: Container(
        width: 180,
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.deepPurple.shade50,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.deepPurple.withOpacity(0.1),
              blurRadius: 6,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '$courseCount cours',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            const Spacer(),
            const Align(
              alignment: Alignment.bottomRight,
              child: Icon(Icons.arrow_forward_ios_rounded, size: 16, color: Colors.deepPurple),
            ),
          ],
        ),
      ),
    );
  }
}
