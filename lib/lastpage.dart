import 'package:flutter/material.dart';

class Lastpage extends StatefulWidget {
  final String number;
  const Lastpage({Key? key, required this.number}) : super(key: key);

  @override
  State<Lastpage> createState() => _LastpageState();
}

class _LastpageState extends State<Lastpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Completed"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "Registration Completed",
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(" Your Registration Number is :",
                    style: TextStyle(fontSize: 20)),
                Text("MNAP" + widget.number,
                    style: TextStyle(fontSize: 20, color: Colors.green))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
