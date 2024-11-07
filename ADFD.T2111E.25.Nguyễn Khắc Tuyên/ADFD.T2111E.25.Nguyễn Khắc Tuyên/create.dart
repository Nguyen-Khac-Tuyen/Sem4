import 'package:http/http.dart' as http;
import 'dart:io';

import 'env.dart';

create() async {
  print("Đang kết nối PHP Web Service để thêm mới địa điểm du lịch");

  String name;
  String city;
  String des;
  String img;
  int rate;

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

  final response = await http.post(
    Uri.parse("${Env.URL_PREFIX}/PHP_MySQL_WS/create.php"),
    body: {
      "AttractionName": name,
      "City": city,
      "Description": des,
      "Image": img,
      "Rating": rate.toString(),
    },
  );

  if (response.statusCode == 200) {
    print("Đã thêm mới thành công");
  } else {
    throw Exception('Thất bại trong việc yêu cầu thêm mới đến Web Service');
  }
}
