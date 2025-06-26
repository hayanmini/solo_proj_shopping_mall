class ShoppingMall {
  List<Product> products = [];
  int totalPrice = 0;

  ShoppingMall() {
    products.add(Product("셔츠", 45000));
    products.add(Product("원피스", 30000));
    products.add(Product("반팔티", 35000));
    products.add(Product("반바지", 38000));
    products.add(Product("양말", 5000));
  } // 상품

  void showProducts() {
    for (var p in products) {
      print("${p.name} / ${p.price}원");
    }
  } // 상품 목록

  void addToCart(String productname, int productnumber) {
    // for (var pd in products) {
    if (productnumber <= 0) {
      print("0개보다 많은 개수의 상품만 담을 수 있어요 !");
      return;
    }

    for (var i = 0; i < products.length; i++) {
      var pd = products[i];

      print("👉 디버깅: 비교 대상 상품명 = '${pd.name}'");
      print("👉 디버깅: 입력한 상품명 = '${productname}'");
      if (productname == pd.name) {
        totalPrice += productnumber * pd.price;
        print("장바구니에 상품이 담겼어요 !");
        return;
      } // 상품 가격 누적
    } // 상품 리스트에서 입력값 대조하기

    print("입력값이 올바르지 않아요 !"); // 입력값 오류 처리
  } // 장바구니 담기

  void showTotal() {
    print("장바구니에 $totalPrice원 어치를 담으셨네요 !");
  } // 총 가격 출력
} // 쇼핑몰 클래스

class Product {
  String name;
  int price;

  Product(this.name, this.price);
} // 상품 클래스
