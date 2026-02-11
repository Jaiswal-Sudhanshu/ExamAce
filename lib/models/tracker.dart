class StudyTracker {
  final String title;
  final double progress;
  final int tasksCompleted;
  final int totalTasks;
  final int streak;

  const StudyTracker({
    required this.title,
    required this.progress,
    required this.tasksCompleted,
    required this.totalTasks,
    required this.streak,
  });

  factory StudyTracker.fromMap(Map<String, dynamic> map) {
    double parseProgress(dynamic v) {
      if (v is int) return v.toDouble();
      if (v is double) return v;
      return 0.0;
    }

    return StudyTracker(
      title: map['title'] ?? '',
      progress: parseProgress(map['progress']),
      tasksCompleted: (map['tasksCompleted'] ?? 0) as int,
      totalTasks: (map['totalTasks'] ?? 0) as int,
      streak: (map['streak'] ?? 0) as int,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'progress': progress,
      'tasksCompleted': tasksCompleted,
      'totalTasks': totalTasks,
      'streak': streak,
    };
  }
}
