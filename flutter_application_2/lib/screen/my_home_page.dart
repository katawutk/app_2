import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _conter = 0;

  void _adderCount() {
    setState(() {
      _conter++;
    });
  }

  void _subtractorCount() {
    if (_conter > 0) {
      setState(() {
        _conter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My +- counter"),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text("จำนวนครั้งที่นับไปแล้ว $_conter ครั้ง",
                style: TextStyle(fontSize: 40, color: Color.fromARGB(255, 245, 141, 66))),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              ElevatedButton(
                onPressed: _subtractorCount,
                child: Text(
                  "Decrement -",
                  style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 80, 83, 239)),
                ),
              ),
              ElevatedButton(
                onPressed: _adderCount,
                child: Text(
                  "Increment +",
                  style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 187, 102, 163)),
                ),
              ),
            ]),
          ])),
    );
  }
}