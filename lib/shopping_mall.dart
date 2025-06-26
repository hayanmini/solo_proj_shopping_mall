// 쇼핑몰 클래스
class ShoppingMall {
  List<Product> products = [];
  int totalPrice = 0;

  // 상품명, 가격
  ShoppingMall() {
    products.add(Product("셔츠", 45000));
    products.add(Product("원피스", 30000));
    products.add(Product("반팔티", 35000));
    products.add(Product("반바지", 38000));
    products.add(Product("양말", 5000));
  }

  // 상품 목록 출력
  void showProducts() {
    for (var p in products) {
      print("${p.name} / ${p.price}원");
    }
  }

  // 장바구니 담기 로직
  void addToCart(String productname, int productnumber) {
    // 음수값 처리
    if (productnumber <= 0) {
      print("0개보다 많은 개수의 상품만 담을 수 있어요 !");
      return;
    }

    // 상품 찾기
    for (var i = 0; i < products.length; i++) {
      var pd = products[i];

      // 상품 담기 성공 로직
      if (productname == pd.name) {
        totalPrice += productnumber * pd.price;
        print("장바구니에 상품이 담겼어요 !");
        return;
      }
    }

    // 입력값 오류 처리
    print("입력값이 올바르지 않아요 !");
  }

  // 총 가격 출력
  void showTotal() {
    print("장바구니에 $totalPrice원 어치를 담으셨네요 !");
  }
}

// 상품 클래스
class Product {
  String name;
  int price;

  Product(this.name, this.price);
}
