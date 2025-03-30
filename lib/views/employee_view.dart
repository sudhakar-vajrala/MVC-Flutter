import 'package:flutter/material.dart';
import 'package:mvc_sample/Controllers/employee_controller.dart';

class EmployeeView extends StatefulWidget {
  const EmployeeView({super.key});

  @override
  State<EmployeeView> createState() => _EmployeeViewState();
}

class _EmployeeViewState extends State<EmployeeView> {

  final EmployeeController _controller = EmployeeController();

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MVC Sample'),
      ),
      body: Center(
        child: FutureBuilder(
          future: _controller.getEmployeeData(), 
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting){
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Errror: ${snapshot.error}');
            } else if(snapshot.hasData) {
            // If data is fetched successfully, display the list
            final employees = snapshot.data!;

            return ListView.builder(
              itemCount: employees.length,
              itemBuilder: (context, index) {
                final employee = employees[index];
                return ListTile(
                  title: Text(employee.name, style: TextStyle(
                    fontSize: 25,
                  ),),
                  subtitle: Text(employee.salary),
                );
              },
            );
          } else {
              return Text('No data');
            }
          }),
      ),
    );
  }
}