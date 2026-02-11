import 'package:flutter/material.dart';
import '../models/tracker.dart';
import '../theme/app_theme.dart';

class TrackerCard extends StatelessWidget {
  final StudyTracker tracker;
  const TrackerCard({super.key, required this.tracker});

  @override
  Widget build(BuildContext context) {
    final percent = (tracker.progress * 100).toStringAsFixed(0);
    return Container(
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(tracker.title, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: LinearProgressIndicator(
              value: tracker.progress,
              minHeight: 10,
              backgroundColor: AppColors.slate,
              valueColor: const AlwaysStoppedAnimation(AppColors.amber),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Text('$percent% complete', style: Theme.of(context).textTheme.bodyMedium),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: AppColors.accent.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text('🔥 ${tracker.streak} day streak', style: const TextStyle(color: AppColors.softYellow)),
              )
            ],
          ),
          const SizedBox(height: 8),
          Text('${tracker.tasksCompleted}/${tracker.totalTasks} tasks done', style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}
