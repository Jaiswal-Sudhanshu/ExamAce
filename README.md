# 🚀 ExamAce

ExamAce is a modern Flutter-based study management app that helps students:

- 📝 Organize Notes
- 📚 Access Previous Year Questions (PYQs)
- 📊 Track Study Progress
- 🔐 Secure Login with Firebase Authentication

Built using:
- Flutter (Material 3)
- Firebase Authentication
- Cloud Firestore
- Provider (State Management)
- Production-ready scalable architecture



## 📸 Features

### ✅ Notes Management
- Add and manage subject-wise notes
- Firestore real-time sync

### ✅ PYQs Section
- Store and access previous year question links
- Structured per user

### ✅ Study Tracker
- Track progress
- Monitor streaks
- Measure task completion

### ✅ Authentication
- Secure Firebase login
- User-based Firestore data isolation



## 🏗 Architecture

lib/
├── models/
├── services/
├── screens/
├── widgets/
├── theme/
└── main.dart


- Clean separation of concerns
- Production-ready Firestore structure
- Scalable codebase



## 🔐 Firebase Structure

users/{uid}/
notes/
pyqs/
trackers/


Each user has isolated data.



## 📦 Installation

```bash
git clone https://github.com/Jaiswal-sudhanshu/ExamAce.git
cd ExamAce
flutter pub get
flutter run


Author

Sudhanshu Jaiswal
B.Tech CSE (IoT)
Flutter & Firebase Developer

🌟 Future Enhancements

AI-based study recommendations

Exam reminder notifications

Cloud sync backup system

Admin dashboard

If you found this project useful, consider giving it a ⭐




# ✅ Now Finish Merge

Run:

```bash
git add README.md
git commit -m "Resolved README merge conflict"
git push origin main
