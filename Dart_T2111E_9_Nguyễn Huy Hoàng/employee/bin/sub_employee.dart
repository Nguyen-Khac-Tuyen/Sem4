import 'dart:io';
import 'dart:convert';

typedef EmployeeData = Map<String, dynamic>;

var list = new List<EmployeeData>.empty(growable: true);

columns() {
  print("\n");
  print("\n+--------------------------------------------------+");
  print("\n| ID | FullName | Birthday | Address | PhoneNumber |");
  print("\n+--------------------------------------------------+");
}

row(EmployeeData emp, int num) {
  print(
      "\n| ${num} | ${emp['name']} | ${emp['dob']} | ${emp['addr']} | ${emp['tel']} |");
}

table() {
  columns();

  int n = 1;
  list.forEach((e) {
    row(e, n);
    n++;
  });
}

addNewEmployee() {
  print("\n Name:");
  String _name = stdin.readLineSync().toString();

  print("\n Date of Birth:");
  String _dob = stdin.readLineSync().toString();

  print("\n Address:");
  String _addr = stdin.readLineSync().toString();

  print("\n Telephone Number:");
  String _tel = stdin.readLineSync().toString();

  EmployeeData emp;

  emp = {
    'name': _name,
    'dob': _dob,
    'addr': _addr,
    'tel': _tel,
  };

  list.add(emp);
  print("Add Complete");
}

getAllEmployee() {
  print("Employee List");
  table();
}

updateEmployee() {
  print("Editing...");

  print("\n Please enter the ID:");
  int n = int.parse(stdin.readLineSync().toString());
  int i = n - 1;

  print("\n New name:");
  String _name = stdin.readLineSync().toString();

  print("\n New date of Birth:");
  String _dob = stdin.readLineSync().toString();

  print("\n New address:");
  String _addr = stdin.readLineSync().toString();

  print("\n New telephone Number:");
  String _tel = stdin.readLineSync().toString();

  EmployeeData emp;

  emp = {
    'name': _name,
    'dob': _dob,
    'addr': _addr,
    'tel': _tel,
  };

  list[i] = emp;

  print("\n Edit Complete");
}

deleteEmployee() {
  print("Deleting...");

  print("\n Enter ID you want to delete:");
  int n = int.parse(stdin.readLineSync().toString());
  int i = n - 1;

  list.removeAt(i);
}
