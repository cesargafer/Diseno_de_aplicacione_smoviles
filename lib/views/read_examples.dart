import 'package:flutter/material.dart';

class ReadExamples extends StatefulWidget {
  const ReadExamples({Key? key}) : super(key: key);

  @override
  _ReadExamplesState createState() => _ReadExamplesState();
}

class _ReadExamplesState extends State<ReadExamples> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Read example'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Check out our examples"),
              SizedBox(
                height: 6,
                width: MediaQuery.of(context).size.width,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("read examples"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("read examples"),
              ),
            ],
          ),
        ));
  }
}
