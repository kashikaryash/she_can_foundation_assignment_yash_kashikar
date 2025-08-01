import 'package:flutter/material.dart';

class RewardCard extends StatelessWidget {
  final String title;
  final IconData icon;

  const RewardCard({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(icon, size: 32, color: Colors.indigo),
            SizedBox(height: 8),
            Text(title),
          ],
        ),
      ),
    );
  }
}
