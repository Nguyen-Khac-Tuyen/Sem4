import 'package:http/http.dart' as http; 
import 'dart:convert';
import 'dart:io';

import 'env.dart';

read() async {
  print("Đang kết nối PHP Web Service để lấy dữ liệu của 1 địa điểm du lịch");

  int id;
  print("\n Nhập mã địa điểm du lịch: ");
  id = int.parse(stdin.readLineSync().toString());

  final response = await http
      .get(Uri.parse("${Env.URL_PREFIX}/PHP_MySQL_WS/read.php?id=$id"));

  if (response.statusCode == 200) {
    try {

      Map<String, dynamic> map = json.decode(response.body);
      print(map);
      print(map['AttractionName']);
      print(map['City']);
      print(map['Description']);
      print(map['Image']);
      print(map['Rating']);
    } catch (e) {
      print("\n Đọc dữ liệu bản ghi thất bại, nguyên nhân: " + e.toString());
    }
  } else if (response.statusCode == 404) {
    print("\n Không tìm thấy bản ghi với id=$id");
  } else if (response.statusCode == 500) {
    print("\n Máy chủ báo lỗi nội bộ" + response.body.toString());
  } else {
    print(response.statusCode);
    throw Exception('Thất bại trong việc tải dữ liệu cung cấp bởi Web Service');
  }
}
