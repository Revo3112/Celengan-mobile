import 'package:celengan_ayam/Model/Utils/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class FirebaseService {
  // S: Hanya boleh ada satu instance
  static final FirebaseService _instance = FirebaseService._();
  factory FirebaseService() => _instance;

  // S: hanya bisa diinisialisasi di dalam kelas ini
  FirebaseService._();

  static Future<void> initialize(FirebaseOptions optionParam) async {
    await Firebase.initializeApp(
      options: optionParam
    );
  }

  // S: mengambil reference dari database firebase realtime
  static DatabaseReference get databaseRef => FirebaseDatabase.instance.reference();
}