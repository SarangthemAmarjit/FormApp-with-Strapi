import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';

class Document4 extends StatefulWidget {
  const Document4({Key? key}) : super(key: key);

  @override
  State<Document4> createState() => _Document1State();
}

class _Document1State extends State<Document4> with TickerProviderStateMixin {
  FilePickerResult? result;
  PlatformFile? file;
  File? filetodisplay;
  bool isloading = false;
  void _openfile() async {
    try {
      setState(() {
        isloading = true;
      });

      result = await FilePicker.platform.pickFiles(
          type: FileType.custom,
          allowMultiple: false,
          allowedExtensions: ['jpg', 'jpeg', 'png', 'pdf']);

      if (result == null) return;
      file = result!.files.first;
      filetodisplay = File(file!.path.toString());

      setState(() {
        isloading = true;
      });
    } catch (e) {
      print(e);
    }
  }

  void openfile(PlatformFile file) {
    OpenFile.open(file.path!);
  }

  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(length: 3, vsync: this);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 17),
          child: Text("4.  Others :"),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    _openfile();
                  },
                  child: Text("Upload",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.teal))),
              if (file != null)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Container(
                      child: Row(
                    children: [
                      Text("Done",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold)),
                      Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      )
                    ],
                  )),
                ),
            ],
          ),
        ),
        if (file != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 15, right: 10),
            child: ElevatedButton(
              onPressed: () {
                openfile(file!);
                _tabcontroller.animateTo(1);
              },
              child: Text('View'),
            ),
          )
      ],
    );
  }
}
