import 'dart:convert';
import 'dart:io';

import 'package:shopping_mall/shopping_mall.dart';

void main(List<String> arguments) {
  // 쇼핑몰 인스턴스 생성
  var shoppingMall = ShoppingMall();

  // 쇼핑몰 메뉴
  String menu =
      '[1] 상품 목록 보기 / [2] 장바구니에 담기 / [3] 장바구니에 담긴 상품의 총 가격 보기 / [4] 프로그램 종료';
  String line = '-' * (menu.length + 20);

  // 쇼핑몰 메인 로직
  while (true) {
    print(line);
    print(' $menu');
    print(line);

    // 입력값 변환, 공백 제거
    String? numberInput = stdin.readLineSync()?.trim();

    //상품 목록 출력 로직
    if (numberInput == "1") {
      shoppingMall.showProducts();
    }
    // 장바구니 담기 로직
    else if (numberInput == "2") {
      print('상품 이름을 입력해 주세요 !\n');

      // 입력 값 한글 인코딩
      String? productname =
          stdin.readLineSync(encoding: Encoding.getByName('utf-8')!)?.trim();

      print('상품 개수을 입력해 주세요 !\n');

      // 입력값 받기 및 오류 발생시 null 반환
      String? productnumberInput = stdin.readLineSync()?.trim();
      int? productnumber = int.tryParse(productnumberInput!);

      // 입력값 처리 로직
      if (productnumber != null) {
        shoppingMall.addToCart(productname!, productnumber);
      } else {
        print("입력값이 올바르지 않아요 !");
      }
    }
    // 총 가격 출력
    else if (numberInput == "3") {
      shoppingMall.showTotal();
    }
    // 프로그램 종료 로직
    else if (numberInput == "4") {
      print("이용해 주셔서 감사합니다 ~ 안녕히 가세요 !");
      break;
    }
    // 그외값 입력 시 대응
    else {
      print("지원하지 않는 기능입니다 ! 다시 시도해 주세요 ..");
    }
  }
}
