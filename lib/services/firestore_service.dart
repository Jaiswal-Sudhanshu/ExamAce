import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:examace/models/note.dart';
import 'package:examace/models/pyq.dart';
import 'package:examace/models/tracker.dart';


class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Safe UID getter
  String get _uid {
    final user = _auth.currentUser;
    if (user == null) {
      throw Exception('User not logged in');
    }
    return user.uid;
  }

  // =======================
  // NOTES
  // =======================

  Stream<List<Note>> notesStream() {
    return _db
        .collection('users')
        .doc(_uid)
        .collection('notes')
        .snapshots()
        .map(
          (snap) =>
              snap.docs.map((d) => Note.fromMap(d.data())).toList(),
        );
  }

  Future<void> addNote(Note note) async {
    await _db
        .collection('users')
        .doc(_uid)
        .collection('notes')
        .add(note.toMap());
  }

  // =======================
  // PYQs
  // =======================

  Stream<List<Pyq>> pyqStream() {
    return _db
        .collection('users')
        .doc(_uid)
        .collection('pyqs')
        .snapshots()
        .map(
          (snap) =>
              snap.docs.map((d) => Pyq.fromMap(d.data())).toList(),
        );
  }

  Future<void> addPyq(Pyq pyq) async {
    await _db
        .collection('users')
        .doc(_uid)
        .collection('pyqs')
        .add(pyq.toMap());
  }

  // =======================
  // STUDY TRACKERS
  // =======================

  Stream<List<StudyTracker>> trackersStream() {
    return _db
        .collection('users')
        .doc(_uid)
        .collection('trackers')
        .snapshots()
        .map(
          (snap) => snap.docs
              .map((d) => StudyTracker.fromMap(d.data()))
              .toList(),
        );
  }

  Future<void> addTracker(StudyTracker tracker) async {
    await _db
        .collection('users')
        .doc(_uid)
        .collection('trackers')
        .add(tracker.toMap());
  }
}
