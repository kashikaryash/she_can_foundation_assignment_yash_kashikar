import 'package:flutter/material.dart';
import '../app_colors/app_colors.dart';

class AnnouncementsScreen extends StatelessWidget {
  final List<String> announcements = [
    "🎉 New reward unlocked at ₹5,000!",
    "🚀 Top 3 interns will receive Amazon vouchers!",
    "📅 Deadline for fundraising: 31st August",
    "📈 Leaderboard updates every Friday at 5 PM",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Announcements"),
        backgroundColor: AppColors.primary,
      ),
      body: ListView.builder(
        itemCount: announcements.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            color: AppColors.card,
            child: ListTile(
              leading: Icon(Icons.announcement, color: AppColors.primary),
              title: Text(
                announcements[index],
                style: TextStyle(color: AppColors.textPrimary),
              ),
            ),
          );
        },
      ),
    );
  }
}
