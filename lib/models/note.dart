class Note {
  final String title;
  final String subject;
  final String description;
  final List<String> tags;

  const Note({
    required this.title,
    required this.subject,
    required this.description,
    required this.tags,
  });

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      title: map['title'] ?? '',
      subject: map['subject'] ?? '',
      description: map['description'] ?? '',
      tags: (map['tags'] as List<dynamic>? ?? [])
          .map((e) => e.toString())
          .toList(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'subject': subject,
      'description': description,
      'tags': tags,
    };
  }
}
