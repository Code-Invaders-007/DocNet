import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class DocNetFirebaseUser {
  DocNetFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

DocNetFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<DocNetFirebaseUser> docNetFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<DocNetFirebaseUser>(
      (user) {
        currentUser = DocNetFirebaseUser(user);
        return currentUser!;
      },
    );
