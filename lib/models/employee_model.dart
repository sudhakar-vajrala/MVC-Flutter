import 'dart:convert';

import 'package:http/http.dart' as http;

class EmployeeModel {
  String name;
  String age;
  String salary;

EmployeeModel({required this.name, required this.age, required this.salary});

factory EmployeeModel.fromJson(Map<String, dynamic> json) {
  return EmployeeModel(
    name: json['employee_name'], 
    age: json['employee_age'], 
    salary: json['employee_salary'],
    );
}

static Future<List<EmployeeModel>> fetchData() async {
  const url = 'https://raw.githubusercontent.com/johncodeos-blog/MVVMiOSExample/main/demo.json';
  //final response = await http(Uri.parse(url));
  final response = await http.get(
    Uri.parse(url)
  );
  if(response.statusCode == 200) {
    //return EmployeeModel.fromJson(jsonDecode(response.body)); - single object
    List<EmployeeModel> fetchEmployees = (json.decode(response.body) as List).map((post) => EmployeeModel.fromJson(post)).toList();
    return fetchEmployees;
  }
  return [];
}

}