// To parse this JSON data, do
//
//     final ApplicationForm = ApplicationFormFromJson(jsonString);

import 'dart:convert';

ApplicationForm ApplicationFormFromJson(String str) =>
    ApplicationForm.fromJson(json.decode(str));

String ApplicationFormToJson(ApplicationForm data) =>
    json.encode(data.toJson());

class ApplicationForm {
  ApplicationForm(
      {required this.post,
      required this.username,
      required this.email,
      required this.password,
      required this.phonenumber,
      required this.address,
      required this.qualification,
      required this.gen,
      required this.id});
  int id;
  String post;
  String username;
  String email;
  String password;
  String phonenumber;
  String address;
  String qualification;
  String gen;

  factory ApplicationForm.fromJson(Map<String, dynamic> json) =>
      ApplicationForm(
        post: json["post"],
        username: json["username"],
        email: json["email"],
        password: json["password"],
        phonenumber: json["phonenumber"],
        address: json["address"],
        qualification: json["qualification"],
        gen: json["gen"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "post": post,
        "username": username,
        "email": email,
        "password": password,
        "phonenumber": phonenumber,
        "address": address,
        "qualification": qualification,
        "gen": gen,
      };
}
