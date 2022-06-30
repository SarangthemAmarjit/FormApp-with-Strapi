import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DisplayUsers extends StatefulWidget {
  final String post;
  final String username;
  final String email;
  final String password;
  final String phonenumber;
  final String address;
  final String qualification;
  final String gen;

  const DisplayUsers(
      {Key? key,
      required this.post,
      required this.username,
      required this.email,
      required this.password,
      required this.phonenumber,
      required this.address,
      required this.qualification,
      required this.gen})
      : super(key: key);

  @override
  State<DisplayUsers> createState() => _DisplayUsersState();
}

class _DisplayUsersState extends State<DisplayUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Preview to be Post"),
      ),
      body: Column(children: []),
    );
  }
}
