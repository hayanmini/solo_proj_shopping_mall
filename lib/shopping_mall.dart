class ShoppingMall {
  List<Product> products = [];
  int totalPrice = 0;

  ShoppingMall() {
    products.add(Product("셔츠", 45000));
    products.add(Product("원피스", 30000));
    products.add(Product("반팔티", 35000));
    products.add(Product("반바지", 38000));
    products.add(Product("양말", 5000));
  }

  void showProducts() {
    for (var p in products) {
      print("${p.name} / ${p.price}");
    }
  } // 상품 목록

  void addToCart() {
    // for (var i = 0; i < products.length; i++) {
    //   var pd = products[i];
    //   products[i].name , products[i].price
    // }
  }

  void showTotal() {
    //
  }
} // 쇼핑몰 클래스

class Product {
  String name;
  int price;

  Product(this.name, this.price);
} // 상품 클래스
