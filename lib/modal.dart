// To parse this JSON data, do
//
//     final ApplicationForm = ApplicationFormFromJson(jsonString);

import 'dart:convert';

ApplicationForm ApplicationFormFromJson(String str) =>
    ApplicationForm.fromJson(json.decode(str));

String ApplicationFormToJson(ApplicationForm data) =>
    json.encode(data.toJson());

class ApplicationForm {
  ApplicationForm({
    required this.post,
    required this.name,
    required this.email,
    required this.password,
    required this.number,
    required this.address,
    required this.qualification,
    required this.gender,
  });

  String post;
  String name;
  String email;
  String password;
  String number;
  String address;
  String qualification;
  String gender;

  factory ApplicationForm.fromJson(Map<String, dynamic> json) =>
      ApplicationForm(
        post: json["post"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
        number: json["number"],
        address: json["address"],
        qualification: json["qualification"],
        gender: json["gender"],
      );

  Map<String, dynamic> toJson() => {
        "post": post,
        "name": name,
        "email": email,
        "password": password,
        "number": number,
        "address": address,
        "qualification": qualification,
        "gender": gender,
      };
}
