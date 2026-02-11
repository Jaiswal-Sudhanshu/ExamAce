import 'package:flutter/material.dart';
import '../models/pyq.dart';
import '../theme/app_theme.dart';

class PyqCard extends StatelessWidget {
  final Pyq pyq;
  const PyqCard({super.key, required this.pyq});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: AppColors.accent.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.picture_as_pdf, color: AppColors.softYellow),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(pyq.course, style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 4),
                Text('Year ${pyq.year}', style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.download_rounded, color: AppColors.amber),
          ),
        ],
      ),
    );
  }
}
