import 'dart:io';

import 'package:http/http.dart' as http;

import 'env.dart';

delete() async {
  print("Đang kết nối PHP Web Service để xóa địa điểm du lịch");
  int id;

  print("\n Nhập mã địa điểm du lịch: ");
  id = int.parse(stdin.readLineSync().toString());

  final response = await http.post(
    Uri.parse("${Env.URL_PREFIX}/PHP_MySQL_WS/delete.php"),
    body: {"AttractionID": id.toString()},
  );

  if (response.statusCode == 200) {
    print("Đã xóa thành công");
  } else {
    throw Exception('Thất bại trong việc yêu cầu xóa đến Web Service');
  }
}
