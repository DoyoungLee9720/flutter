import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statement_v01/riverpod_v01/_mvvm/_05/view_models/product_view_model.dart';

class ProductListView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(productProvider);
    final productNotifier = ref.read(productProvider.notifier);

    final TextEditingController _controller = TextEditingController();

    return Flexible(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Enter product name...',
                suffixIcon: IconButton(
                  onPressed: () {
                    final text = _controller.text.trim();
                    if (text.isNotEmpty) {
                      productNotifier.addProduct(text);
                      _controller.clear();
                    }
                  },
                  icon: Icon(Icons.add),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ListTile(
                  title: Text(product.name),
                  subtitle: Text(
                    product.isAvaliable
                        ? '제고 있음 : ${product.stock}'
                        : '제고 없음 : ${product.stock}',
                    style: TextStyle(
                      color: product.isAvaliable ? Colors.green : Colors.red,
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          productNotifier.addProductStock(index);
                        },
                        icon: const Icon(Icons.add),
                      ),
                      IconButton(
                        onPressed: () {
                          productNotifier.minusProductStock(index);
                        },
                        icon: const Icon(Icons.remove),
                      ),
                      IconButton(
                        onPressed: () {
                          productNotifier.removeProduct(index);
                        },
                        icon: const Icon(Icons.close),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
