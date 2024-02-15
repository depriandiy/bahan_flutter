import 'package:coba_lagi/providers/0get_products.dart';
import 'package:coba_lagi/screens/0product_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// menampilkan grid view products.
class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final allproduct = productData.allproducts;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: allproduct.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        // context akan berisi product yg terpilih.
        // create: (context) => allproduct[i], // -> langsung pake value saja.
        value: allproduct[i],
        child: const ProductItem(),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
