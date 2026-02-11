import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String actionLabel;
  final VoidCallback? onAction;

  const SectionHeader({super.key, required this.title, this.actionLabel = 'See all', this.onAction});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: Theme.of(context).textTheme.titleLarge),
        const Spacer(),
        TextButton(
          onPressed: onAction,
          style: TextButton.styleFrom(foregroundColor: AppColors.softYellow),
          child: Text(actionLabel, style: const TextStyle(fontWeight: FontWeight.w600)),
        ),
      ],
    );
  }
}
