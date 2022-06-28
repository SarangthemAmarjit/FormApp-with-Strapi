import 'package:flutter/material.dart';
import 'package:form1/main.dart';
import 'package:form1/personal.dart';
import 'package:form1/previewdata.dart';
import 'doc1.dart';
import 'doc2.dart';
import 'doc3.dart';
import 'doc4.dart';
import 'package:form1/form_screen.dart';

class page2 extends StatefulWidget {
  final String post;
  final String username;
  final String email;
  final String password;
  final String phonenumber;
  final String address;
  final String qualification;
  final String gen;
  const page2(
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
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload Documents"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15, bottom: 30),
            child: Text(
              " UPLOAD REQUIRED DOCUMENTS",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          Document1(),
          Document2(),
          Document3(),
          Document4(),
          ElevatedButton(
              onPressed: () => {
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Previewpage(
                                    post: widget.post,
                                    username: widget.username,
                                    email: widget.email,
                                    password: widget.password,
                                    phonenumber: widget.phonenumber,
                                    address: widget.address,
                                    qualification: widget.qualification,
                                    gen: widget.gen,
                                  )))
                    }
                  },
              child: Text(
                'Next',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ))
        ],
      ),
    );
  }
}
