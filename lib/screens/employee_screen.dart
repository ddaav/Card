import 'package:flutter/material.dart';
import 'package:card/data/employee.dart';
import '../models/employee.dart';

class EmployeeScreen extends StatelessWidget {
  const EmployeeScreen({super.key});

  
  final List<Color> cardColors = const [
    Colors.lightGreen,
    Colors.redAccent,
    Colors.blueGrey,
    Colors.pinkAccent,
    Colors.brown,
    Colors.lightBlue,
    Colors.yellowAccent,
    Colors.cyanAccent,
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200, 
      appBar: AppBar(title: const Text('Employees')),
      body: ListView.separated(
        itemCount: employees.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          final Employee emp = employees[index];
          final Color cardColor =
              cardColors[index % cardColors.length]; 
          return Card(
            color: cardColor.withOpacity(0.7), 
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Employee ID: ${emp.id}",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Full Name: ${emp.fullname}"),
                  Text("Gender: ${emp.gender}"),
                  Text("Department: ${emp.department}"),
                  Text("Username: ${emp.username}"),
                  Text("Password: ${emp.password}"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
