import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final foto = const CircleAvatar(
    backgroundImage:
        NetworkImage('https://avatars.githubusercontent.com/u/49030804?v=4'),
    radius: 150,
  );

  final nome = const Text(
    'Julio Cesar Alves da Silva',
    style: TextStyle(fontSize: 30),
    textAlign: TextAlign.center,
  );

  final botaoTelefone = IconButton(
    color: Colors.blue,
    icon: const Icon(Icons.phone),
    onPressed: () {},
  );

  final botaoEmail = IconButton(
    color: Colors.blue,
    icon: const Icon(Icons.mail),
    onPressed: () {},
  );

  final botaoSMS = IconButton(
    color: Colors.blue,
    icon: const Icon(Icons.sms),
    onPressed: () {},
  );

  Widget build(BuildContext contexto) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          foto,
          nome,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [botaoTelefone, botaoEmail, botaoSMS],
          ),
        ],
      ),
    );
  }
}
