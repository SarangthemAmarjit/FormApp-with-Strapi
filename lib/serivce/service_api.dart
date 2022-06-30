import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:form1/modal.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ServiceApi {
  Future save(ApplicationForm data) async {
    await http.post(
        Uri.parse(
          "https://herokunew123.herokuapp.com/api/application-forms",
        ),
        headers: <String, String>{
          'Context-Type': 'application/json; charset=UTF-8',
        },
        body: <String, String>{
          'name': data.name,
          'email': data.email,
          'password': data.password,
        });
  }
}
