import 'dart:io';
import 'sub_employee.dart';

import 'package:employee/employee.dart' as employee;

void main(List<String> arguments) {
  while (true) {
    print(
        "\n+-------------------------------------------------------------------------------------------------------+");
    print(
        "\n| Dart Employee Managment                                                                               |");
    print(
        "\n+-------------------------------------------------------------------------------------------------------+");
    print(
        "\n|1.Add |2.Edit |3.List |4.Delete |5.Exit                                                                |");
    print(
        "\n+-------------------------------------------------------------------------------------------------------+");

    int menu;
    print("\n\n  Select menu[1-5]: ");
    menu = int.parse(stdin.readLineSync().toString());

    switch (menu) {
      case 1:
        addNewEmployee();
        break;
      case 2:
        updateEmployee();
        break;
      case 3:
        getAllEmployee();
        break;
      case 4:
        deleteEmployee();
        break;
      case 5:
        print("\n\n Exit...");
        exit(0);

      default:
        print("\n Please select available menu !");
        break;
    }
  }
}
