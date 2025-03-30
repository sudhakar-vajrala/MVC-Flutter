import 'package:mvc_sample/models/employee_model.dart';

class EmployeeController {
  Future<List<EmployeeModel>> getEmployeeData() async {
    return await EmployeeModel.fetchData();
  }
}