import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color.fromARGB(248, 0, 0, 0),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2.0)),
          ),
          elevation: 10,
        ),
      ),
      home: const MyHomePage(title: 'Flutter APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Counter",
              style: GoogleFonts.pacifico(fontSize: 30.0, color: Colors.black)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Click the button to add or remove',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text('$_counter', style: GoogleFonts.nabla(fontSize: 70.0)),
            ],
          ),
        ),
        floatingActionButton: _fab()

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  Widget _fab() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          onPressed: _decrementCounter,
          tooltip: 'Decrement',
          child: const Icon(Icons.remove),
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          onPressed: _resetCounter,
          tooltip: 'Reset',
          child: const Icon(Icons.exposure_zero),
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          width: 5.0,
        ),
      ],
    );
  }
}
