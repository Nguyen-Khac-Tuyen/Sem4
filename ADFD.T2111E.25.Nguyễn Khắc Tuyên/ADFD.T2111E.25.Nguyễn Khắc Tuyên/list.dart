import 'package:http/http.dart' as http;
import 'dart:convert';


import 'model.attractions.dart';
import 'env.dart';

list() async {
  print("Đang kết nối PHP Web Service để lấy dữ liệu danh sách địa điểm du lịch");

  final response =
      await http.get(Uri.parse("${Env.URL_PREFIX}/PHP_MySQL_WS/list.php"));

  if (response.statusCode == 200) {
    final items = json.decode(response.body).cast<Map<String, dynamic>>();

    List<Attraction> students = items.map<Attraction>((json) {
      return Attraction.fromJson(json);
    }).toList();

    students.forEach((element) {
      print(element.id.toString() + " " + element.name + " \n");
    });
  } else {
    throw Exception('Thất bại trong việc tải dữ liệu cung cấp bởi Web Service');
  }
}

Future<List<Attraction>> getStudentList() async {
  final response =
      await http.get(Uri.parse("${Env.URL_PREFIX}/PHP_MySQL_WS/list.php"));

  if (response.statusCode == 200) {
    final items = json.decode(response.body).cast<Map<String, dynamic>>();

    List<Attraction> students = items.map<Attraction>((json) {
      return Attraction.fromJson(json);
    }).toList();

    return students;
  } else {
    throw Exception('Thất bại trong việc tải dữ liệu cung cấp bởi Web Service');
  }
}
