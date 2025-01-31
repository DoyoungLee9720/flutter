import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statement_v01/riverpod_v01/_mvvm/_05/models/product.dart';

// 사실 창고가 --> 뷰모델 입니다.
// 창고 만들기
class ProductNotifier extends Notifier<List<Product>> {
  @override
  List<Product> build() {
    //초기값 설정
    return [];
  }

  // addProduct(String name)
  void addProduct(String name) {
    // state.add(Product(name: name));
    state = [...state, Product(name: name)];
  }

  // 재고 여부 변경 togglerAsAvliable(int index)
  void togglerisAvliable(Product product) {
    state = state
        .map((item) => item == product
            ? item.copyWith(isAvaliable: !item.isAvaliable)
            : item)
        .toList();
  }

  // removeProduct(int index)
  void removeProduct(int index) {
    state = List.from(state)..removeAt(index);
  }

  void addProductStock(int index) {
    final product = state[index];
    state = state
        .asMap()
        .entries
        .map((entry) => entry.key == index
            ? product.copyWith(stock: product.stock + 1, isAvaliable: true)
            : entry.value)
        .toList();
  }

  void minusProductStock(int index) {
    final product = state[index];
    if (product.stock != 0) {
      state = state
          .asMap()
          .entries
          .map((entry) => entry.key == index
              ? product.copyWith(stock: product.stock - 1)
              : entry.value)
          .toList();
      if (product.stock == 0) {
        state = state
            .asMap()
            .entries
            .map((entry) => entry.key == index
                ? product.copyWith(isAvaliable: false)
                : entry.value)
            .toList();
      }
    }
  }
}

// 창고 관리자
final productProvider = NotifierProvider<ProductNotifier, List<Product>>(
  () => ProductNotifier(),
);
