import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Избиватель кнопки'),
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

  void _increaseCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decreaseCounter(){
    setState(() {
      if (_counter >0){
      _counter--;
      }
    });
  }

  void _resetCounter(){
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    const Text('Кнопка избита раз:'),
    Text(
    '$_counter',
    style: Theme.of(context).textTheme.headlineMedium,
    ),
    const SizedBox(height: 21),
    const SizedBox(),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      InkWell(onTap: _decreaseCounter, borderRadius: BorderRadius.circular(8),
    child: Container(
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(8)),
    child: Text('Гладить')
    ),
    ),
    SizedBox(width: 16),

    InkWell(onTap: _increaseCounter, borderRadius: BorderRadius.circular(8),
    child: Container(
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(8)),
    child: Text('Избить'),
    ),
    ),
    ],
    ),
    TextButton(
        onPressed: _resetCounter,
        style: TextButton.styleFrom(
            foregroundColor: Colors.blueGrey,
          backgroundColor: Colors.cyan.shade300,
        ),
        child: const Text(r"¯\_( ͡° ͜ʖ ͡°)_/¯")),
    ],
    ),
    ),
    );
  }
}
