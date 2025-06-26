import 'dart:convert';
import 'dart:io';

import 'package:shopping_mall/shopping_mall.dart';

void main(List<String> arguments) {
  var shoppingMall = ShoppingMall(); // 변수 선언

  while (true) {
    print(
        '-------------------------------------------------------------------------------------------------------------');
    print(
        '[1] 상품 목록 보기 / [2] 장바구니에 담기 / [3] 장바구니에 담긴 상품의 총 가격 보기 / [4] 프로그램 종료');
    print(
        '-------------------------------------------------------------------------------------------------------------');

    // run 출력값

    String? numberInput = stdin.readLineSync();
    if (numberInput == "1") {
      shoppingMall.showProducts();
      //상품 목록
    } else if (numberInput == "2") {
      print('상품 이름을 입력해 주세요 !\n');

      String? productname =
          stdin.readLineSync(encoding: Encoding.getByName('utf-8')!)?.trim();

      print('상품 개수을 입력해 주세요 !\n');
      String? productnumberInput = stdin.readLineSync()?.trim();
      int productnumber = int.parse(productnumberInput!);
      // 입력값 변환, 공백 제거
      shoppingMall.addToCart(productname!, productnumber);
      // 상품명, 상품 개수
    } else if (numberInput == "3") {
      shoppingMall.showTotal();
      // 총 가격 출력
    } else if (numberInput == "4") {
      print("이용해 주셔서 감사합니다 ~ 안녕히 가세요 !");
      break;
      // 프로그램 종료
    } else {
      print("지원하지 않는 기능입니다 ! 다시 시도해 주세요 ..");
    } // 1234외 입력 시
  } // 입력값 대응

  /*
  try {
    int number = int.parse(input!);
    print('입력한 숫자는 $number입니다.');
  } catch (e) {
    print('올바른 숫자가 아닙니다.');
  }
  */
}
