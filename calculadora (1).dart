import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Contador(),
    );
  }
}

class Contador extends StatefulWidget {
  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int _contador = 0;

  void _incrementar() {
    setState(() {
      _contador++;
    });
  }

  void _decrementar() {
    setState(() {
      _contador--;
    });
  }

  void _multiplicar() {
    setState(() {
      _contador *= 2;
    });
  }

  void _dividir() {
    setState(() {
      if (_contador != 0) {
        _contador ~/= 2; // División entera
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_contador',
              style: TextStyle(fontSize: 48),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _incrementar,
                  child: Text('+'),
                ),
                ElevatedButton(
                  onPressed: _decrementar,
                  child: Text('-'),
                ),
                ElevatedButton(
                  onPressed: _multiplicar,
                  child: Text('* 2'),
                ),
                ElevatedButton(
                  onPressed: _dividir,
                  child: Text('/ 2'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}