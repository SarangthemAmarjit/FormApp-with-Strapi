import 'package:flutter/material.dart';
import 'page2.dart';
import 'personal.dart';
import 'lastpage.dart';

class Previewpage extends StatefulWidget {
  final String post;
  final String username;
  final String email;
  final String password;
  final String phonenumber;
  final String address;
  final String qualification;
  final String gen;

  const Previewpage(
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
  State<Previewpage> createState() => _PreviewpageState();
}

class _PreviewpageState extends State<Previewpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Final Submit"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                "PREVIEW FORM DATA :",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: {0: FlexColumnWidth(2), 1: FlexColumnWidth(3)},
              border: TableBorder.all(color: Colors.green, width: 2),
              children: [
                TableRow(children: [Text("POST :"), Text(widget.post)]),
                TableRow(children: [Text("NAME :"), Text(widget.username)]),
                TableRow(children: [Text("EMAIL :"), Text(widget.email)]),
                TableRow(children: [Text("PASSWORD :"), Text(widget.password)]),
                TableRow(children: [
                  Text("CONTACT NUMBER :"),
                  Text(widget.phonenumber)
                ]),
                TableRow(children: [Text("ADDRESS :"), Text(widget.address)]),
                TableRow(children: [
                  Text("QUALIFICATION :"),
                  Text(widget.qualification)
                ]),
                TableRow(children: [Text("GENDER :"), Text(widget.gen)]),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            ElevatedButton(
                onPressed: () => {
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Lastpage(
                                      number: widget.phonenumber,
                                    )))
                      }
                    },
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ))
            /*Container(
              width: MediaQuery.of(context).size.width,
              height: 600,
              child: Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                          Text(" POST :           "),
                          Text(
                            widget.post,
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                          Text(" USERNAME :       "),
                          Text(
                            widget.username,
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                          Text(" EMAIL :          "),
                          Text(
                            widget.email,
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                          Text(" PASSWORD :       "),
                          Text(
                            widget.password,
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                          Text(" CONTACT NUMBER : "),
                          Text(
                            widget.phonenumber,
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                          Text(" ADDRESS :        "),
                          Text(
                            widget.address,
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                          Text(" QUALIFICATION :  "),
                          Text(
                            widget.qualification,
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                          Text(" GENDER :         "),
                          Text(
                            widget.gen,
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
