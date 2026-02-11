import 'package:flutter/material.dart';
import '../models/note.dart';
import '../theme/app_theme.dart';

class NoteCard extends StatelessWidget {
  final Note note;
  const NoteCard({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
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
          Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundColor: AppColors.accent.withOpacity(0.2),
                child: Text(note.subject[0], style: const TextStyle(color: AppColors.softYellow)),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(note.title, style: Theme.of(context).textTheme.titleMedium),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(note.description, style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 6,
            children: note.tags
                .map((tag) => Chip(
                      label: Text(tag),
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 0),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
