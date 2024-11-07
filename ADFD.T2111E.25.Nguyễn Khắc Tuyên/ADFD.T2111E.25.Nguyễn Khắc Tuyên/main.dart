// Sử dụng thư viện chuẩn
import 'dart:io';

// Sử dụng thư viện hàm / chương trình con
import 'create.dart';
import 'read.dart';
import 'update.dart';
import 'delete.dart';
import 'list.dart';

main() async {
  while (true) {
    print(
        "\n+--------------------------------------------------------------------------------------------+");
    print(
        "\n|                                  QUẢN TRỊ CSDL DU LỊCH                                     |");
    print(
        "\n+--------------------------------------------------------------------------------------------+");
    print(
        "\n|                    1.Thêm |2.Sửa |3.Xóa |4.Xem |5.Duyệt |0. Thoát                          |");
    print(
        "\n+--------------------------------------------------------------------------------------------+");

    int menu;
    print("\n\n  Chọn menu[1-5]: ");
    menu = int.parse(stdin.readLineSync().toString());

    switch (menu) {
      case 1:
        await create();
        break;
      case 2:
        await update();
        break;
      case 3:
        await delete();
        break;
      case 4:
        await read();
        break;
      case 5:
        await list();
        break;
      case 0:
        print("\n\n Thoát...");
        exit(0);

      default:
        print("\n Bạn vui lòng chọn menu hợp lệ !");
        break;
    }
  } // end while() loop
} // end main()
