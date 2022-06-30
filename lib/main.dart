import 'package:flutter/material.dart';
import 'package:form1/form_screen.dart';
import 'home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Form Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Formhome(),
    );
  }
}

class form1 extends StatefulWidget {
  const form1({Key? key}) : super(key: key);

  @override
  State<form1> createState() => _form1State();
}

class _form1State extends State<form1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "APPLICATION FORM",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
