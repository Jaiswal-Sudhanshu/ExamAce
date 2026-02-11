import '../models/note.dart';
import '../models/pyq.dart';
import '../models/tracker.dart';

final sampleNotes = <Note>[
  Note(
    title: 'Algorithms - Cheat Sheet',
    subject: 'DSA',
    description: 'Core patterns, complexities, and common pitfalls.',
    tags: ['DSA', 'Quick'],
  ),
  Note(
    title: 'Operating Systems Summary',
    subject: 'OS',
    description: 'Processes, threads, scheduling, memory management.',
    tags: ['OS', 'Revision'],
  ),
  Note(
    title: 'DBMS Indexing',
    subject: 'DBMS',
    description: 'B+ Trees, Hash indexes, clustering vs non-clustering.',
    tags: ['DBMS', 'Index'],
  ),
];

final samplePyqs = <Pyq>[
  Pyq(
    course: 'Computer Networks',
    year: '2023',
    link: 'https://example.com/pyq/cn-2023.pdf',
  ),
  Pyq(
    course: 'Data Structures',
    year: '2022',
    link: 'https://example.com/pyq/dsa-2022.pdf',
  ),
  Pyq(
    course: 'Operating Systems',
    year: '2021',
    link: 'https://example.com/pyq/os-2021.pdf',
  ),
];

final sampleTrackers = <StudyTracker>[
  StudyTracker(
    title: 'DSA 30-Day Sprint',
    progress: 0.45,
    tasksCompleted: 13,
    totalTasks: 29,
    streak: 5,
  ),
  StudyTracker(
    title: 'OS Revision Plan',
    progress: 0.72,
    tasksCompleted: 18,
    totalTasks: 25,
    streak: 9,
  ),
  StudyTracker(
    title: 'DBMS Concept Drills',
    progress: 0.33,
    tasksCompleted: 7,
    totalTasks: 21,
    streak: 3,
  ),
];
