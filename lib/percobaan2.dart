import 'package:flutter/material.dart';

class percobaan2 extends StatefulWidget {
  const percobaan2({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<percobaan2> createState() => _percobaan2();
}

class _percobaan2 extends State<percobaan2> {
  int _counter = 1;
  String _text ="Ganjil";

  void _incrementCounter() {
    setState(() {
      _counter++;
      if(_counter>10){
        _counter =1;
      }
      if(_counter%2 == 0){
        _text = "Genap";
      }
      else{
        _text = "Ganjil";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Percobaan 2\nAnda sudah menekan tombol ini sebanyak:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              _text,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}