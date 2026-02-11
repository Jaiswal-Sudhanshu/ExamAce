import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import '../services/firestore_service.dart';
import '../services/auth_service.dart';
import '../widgets/section_header.dart';
import '../widgets/note_card.dart';
import '../widgets/pyq_card.dart';
import '../widgets/tracker_card.dart';
import '../theme/app_theme.dart';
import '../state/app_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _tabIndex = 0;

  final _firestore = FirestoreService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExamAce'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
            onPressed: () => AuthService().signOut(),
            icon: const Icon(Icons.logout_rounded),
            tooltip: 'Sign out',
          ),
          IconButton(
            onPressed: () => context.read<AppState>().toggleTheme(),
            icon: Icon(
              context.watch<AppState>().themeMode == ThemeMode.dark
                  ? Icons.light_mode
                  : Icons.dark_mode,
            ),
            tooltip: 'Toggle theme',
          ),
          const SizedBox(width: 4),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              const SizedBox(height: 12),
              _buildHeroCard(context),
              const SizedBox(height: 20),
              SectionHeader(title: 'Pinned Notes', onAction: () {}),
              StreamBuilder(
                stream: _firestore.notesStream(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Padding(
                      padding: EdgeInsets.all(16),
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }
                  final notes = snapshot.data ?? [];
                  if (notes.isEmpty) {
                    return const Padding(
                      padding: EdgeInsets.all(12),
                      child: Text('No notes yet. Add your first note!'),
                    );
                  }
                  return StaggeredGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    children: notes
                        .map((n) => StaggeredGridTile.fit(crossAxisCellCount: 1, child: NoteCard(note: n)))
                        .toList(),
                  );
                },
              ),
              const SizedBox(height: 18),
              SectionHeader(title: 'Previous Year Papers', onAction: () {}),
              const SizedBox(height: 8),
              StreamBuilder(
                stream: _firestore.pyqStream(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Padding(
                      padding: EdgeInsets.all(16),
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }
                  final pyqs = snapshot.data ?? [];
                  if (pyqs.isEmpty) {
                    return const Padding(
                      padding: EdgeInsets.all(12),
                      child: Text('No PYQs yet. Upload one to get started.'),
                    );
                  }
                  return Column(
                    children: pyqs
                        .map((p) => Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: PyqCard(pyq: p),
                            ))
                        .toList(),
                  );
                },
              ),
              const SizedBox(height: 18),
              SectionHeader(title: 'Study Trackers', onAction: () {}),
              const SizedBox(height: 8),
              StreamBuilder(
                stream: _firestore.trackersStream(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Padding(
                      padding: EdgeInsets.all(16),
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }
                  final trackers = snapshot.data ?? [];
                  if (trackers.isEmpty) {
                    return const Padding(
                      padding: EdgeInsets.all(12),
                      child: Text('No trackers yet. Create a plan to begin.'),
                    );
                  }
                  return Column(
                    children: trackers
                        .map((t) => Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: TrackerCard(tracker: t),
                            ))
                        .toList(),
                  );
                },
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _tabIndex,
        onTap: (i) => setState(() => _tabIndex = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard_customize_rounded), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.note_alt_rounded), label: 'Notes'),
          BottomNavigationBarItem(icon: Icon(Icons.picture_as_pdf_rounded), label: 'PYQs'),
          BottomNavigationBarItem(icon: Icon(Icons.bolt_rounded), label: 'Trackers'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_rounded),
      ),
    );
  }

  Widget _buildHeroCard(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.darkBrown, AppColors.charcoal],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border),
      ),
      padding: const EdgeInsets.all(18),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('One hub for notes, PYQs, trackers', style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 8),
                Text(
                  'Pin your notes, download PYQs, and stay on streak with personalized trackers.',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 12),
                Wrap(
                  spacing: 10,
                  children: [
                    _pill('All-in-one'),
                    _pill('Dark warm theme'),
                    _pill('Streaks'),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(width: 12),
          Container(
            width: 84,
            height: 84,
            decoration: BoxDecoration(
              color: AppColors.accent.withOpacity(0.2),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(Icons.school_rounded, color: AppColors.softYellow, size: 42),
          )
        ],
      ),
    );
  }

  Widget _pill(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.slate,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }
}
