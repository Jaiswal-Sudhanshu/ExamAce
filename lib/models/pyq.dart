class Pyq {
  final String course;
  final String year;
  final String link;

  const Pyq({
    required this.course,
    required this.year,
    required this.link,
  });

  factory Pyq.fromMap(Map<String, dynamic> map) {
    return Pyq(
      course: map['course'] ?? '',
      year: map['year']?.toString() ?? '',
      link: map['link'] ?? '',
    );
  }

  // ✅ ADD THIS
  Map<String, dynamic> toMap() {
    return {
      'course': course,
      'year': year,
      'link': link,
    };
  }
}
