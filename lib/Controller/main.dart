import 'package:celengan_ayam/Model/local_database/saldo.dart';
import 'package:celengan_ayam/Model/local_database/transaction.dart';
import 'package:celengan_ayam/Model/local_database/user_record.dart';
import 'package:celengan_ayam/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../Model/Boxes.dart';
import '../View/Splash_Page/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Hive.initFlutter();
  Hive.registerAdapter(TransactionAdapter());
  Hive.registerAdapter(SaldoAdapter());
  Hive.registerAdapter(PersonAdapter());
  boxTransaction = await Hive.openBox<Transaction>('transaction');
  boxSaldo = await Hive.openBox<Saldo>('saldo');
  boxPerson = await Hive.openBox<Person>('person');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Flutter Demo',
        home: SplashPage() // J: application will goto splash page first
        );
  }
}
