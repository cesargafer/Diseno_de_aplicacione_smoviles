import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class WriteExamples extends StatefulWidget {
  const WriteExamples({Key? key}) : super(key: key);

  @override
  _WriteExamplesState createState() => _WriteExamplesState();
}

class _WriteExamplesState extends State<WriteExamples> {
  final database = FirebaseDatabase.instance.ref();

  @override
  Widget build(BuildContext context) {
    final dailySpecialRef = database.child('dailySpecial/');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Write Examples'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(children: [
            ElevatedButton(
              onPressed: () async {
                try {
                  await dailySpecialRef.set({'description': 'hello database'});
                  print('Special of the day has been added');
                } catch (e) {
                  print('You got an Error $e');
                }
              },
              child: Text('Simple set'),
            )
          ]),
        ),
      ),
    );
  }
}
