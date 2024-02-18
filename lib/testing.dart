import 'package:celengan_ayam/Model/Utils/firebase_database.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Testing extends StatefulWidget {
  const Testing({super.key});

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  String saldo = "";
  String saldoTF = "";
  final tfController = TextEditingController();

  final DatabaseReference _dbRef = FirebaseService.databaseRef;
  
  @override
  initState() {
    // S: we called super.initState to keep default configurations executed
    super.initState();

    _dbRef.child('saldo').onValue.listen((event) {
      setState(() {
        saldo = event.snapshot.value.toString();
      });
    });
  }

  void setSaldo() {
    _dbRef.child('saldo').set(int.parse(tfController.text));
    _dbRef.child('testing').remove();

    print(saldo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Celengan"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Saldo: $saldo",
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
            ),

            const SizedBox(
              height: 50,
            ),
            
            SizedBox(
              width: 200,
              child: TextField(
                controller: tfController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Saldo',
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // S: Update saldo button
                ElevatedButton(
                  onPressed: setSaldo,
                  child: const Text("Update Saldo"),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}