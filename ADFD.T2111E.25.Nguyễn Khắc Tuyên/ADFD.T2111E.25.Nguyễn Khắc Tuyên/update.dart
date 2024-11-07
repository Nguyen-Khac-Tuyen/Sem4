import 'dart:io';

import 'package:http/http.dart' as http;

import 'env.dart';

update() async {
  print("Đang kết nối PHP Web Service để cập nhật sinh viên");
  int id;
  String name;
  String city;
  String des;
  String img;
  int rate;

  print("\n Nhập mã địa điểm ");
  id = int.parse(stdin.readLineSync().toString());

  final response = await http.get(Uri.parse("${Env.URL_PREFIX}/PHP_MySQL_WS/read.php?id=$id"));

  if (response.statusCode == 200) {
    print("\n Nhập tên địa điểm du lịch: ");
    name = stdin.readLineSync().toString();

    print("\n Nhập tên thành phố: ");
    city = stdin.readLineSync().toString();

    print("\n Nhập mô tả: ");
    des = stdin.readLineSync().toString();

    print("\n Nhập URL ảnh: ");
    img = stdin.readLineSync().toString();

    print("\n Nhập đánh giá: ");
    rate = int.parse(stdin.readLineSync().toString());
    
    final response1 = await http.post(
      Uri.parse("${Env.URL_PREFIX}/PHP_MySQL_WS/update.php?id=$id"),
      body: {
        "AttractionName": name,
        "City": city,
        "Description": des,
        "Image": img,
        "Rating": rate.toString(),
      },
    );

    if (response1.statusCode == 200) {
      print("Đã cập nhật thành công");
    } else {
      throw Exception('Thất bại trong việc yêu cầu thêm mới đến Web Service');
    }
  } else if (response.statusCode == 404) {
    print("\n Không tìm thấy bản ghi với id=$id");
  }
}
