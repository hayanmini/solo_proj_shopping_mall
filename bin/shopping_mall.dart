import 'dart:io';

import 'package:shopping_mall/shopping_mall.dart';

void main(List<String> arguments) {
  // print('Hello world: ${shopping_mall.calculate()}!');
  //print(shopping_mall.Product);

  stdout.write(
      "[1] 상품 목록 보기 / [2] 장바구니에 담기 / [3] 장바구니에 담긴 상품의 총 가격 보기 / [4] 프로그램 종료"); // run 출력값

  var shoppingMall = ShoppingMall();

  while (true) {
    String? numberInput = stdin.readLineSync();
    //int number = int.parse(numberInput!);
    if (numberInput == "1") {
      shoppingMall.showProducts();
    } else if (numberInput == "2") {
      print("상품 이름과 상품 개수를 입력해주세요.");
    } else if (numberInput == "3") {
      print("장바구니에 $ShoppingMall.totalPrice원 어치를 담으셨네요 !");
    } else if (numberInput == "4") {
      print("이용해 주셔서 감사합니다 ~ 안녕히 가세요 !");
      break;
    } else {
      print("지원하지 않는 기능입니다 ! 다시 시도해 주세요 ..");
    } // 입력값 대응
  }

  /*
  try {
    int number = int.parse(input!);
    print('입력한 숫자는 $number입니다.');
  } catch (e) {
    print('올바른 숫자가 아닙니다.');
  }
  */
}
