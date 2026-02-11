import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.charcoal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.menu_book_rounded, size: 82, color: AppColors.softYellow),
            SizedBox(height: 16),
            Text('ExamAce', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: Colors.white)),
            SizedBox(height: 8),
            CircularProgressIndicator(color: AppColors.amber),
          ],
        ),
      ),
    );
  }
}
