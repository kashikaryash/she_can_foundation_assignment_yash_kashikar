import 'package:flutter/material.dart';
import '../app_colors/app_colors.dart';

class LeaderboardScreen extends StatelessWidget {
  final List<Map<String, dynamic>> leaderboard = [
    {'name': 'Yash', 'amount': 7000},
    {'name': 'Sneha', 'amount': 6500},
    {'name': 'Rahul', 'amount': 6000},
    {'name': 'Priya', 'amount': 8500},
    {'name': 'Amit', 'amount': 5000},
  ];

  LeaderboardScreen({super.key}) {
    leaderboard.sort((a, b) => b['amount'].compareTo(a['amount']));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text("Leaderboard"),
        backgroundColor: AppColors.primary,
      ),
      body: ListView.builder(
        itemCount: leaderboard.length,
        itemBuilder: (context, index) {
          final entry = leaderboard[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            color: AppColors.card,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: AppColors.primary,
                child: Text(
                  "${index + 1}",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(
                entry['name'],
                style: TextStyle(color: AppColors.textPrimary),
              ),
              trailing: Text(
                "₹${entry['amount']}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.success,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
