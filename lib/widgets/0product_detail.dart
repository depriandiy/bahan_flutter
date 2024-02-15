import 'package:coba_lagi/providers/0get_products.dart';
import 'package:coba_lagi/providers/1get_carts.dart';
import 'package:coba_lagi/screens/1cart_item.dart';
import 'package:coba_lagi/widgets/1badge.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    // get id product.
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    // get data product from id.
    final detailProduct = Provider.of<Products>(context).findById(productId);
    final detailCart = Provider.of<getCart>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
        backgroundColor: Colors.blue,
        actions: [
          Consumer<getCart>(
            builder: (context, value, ch) {
              return BelajarBadge(
                value: value.jumlah.toString(),
                color: Theme.of(context).colorScheme.secondary,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(CartIcon.routeName);
                  },
                  icon: const Icon(Icons.shopping_cart),
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 250,
              child: Image.network(
                "${detailProduct.imageUrl}",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "${detailProduct.title}",
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Rp. ${detailProduct.price}.000",
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "${detailProduct.desc}",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 30),
            OutlinedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Add cart successfully!"),
                    duration: Duration(milliseconds: 500),
                  ),
                );
                detailCart.addCart(detailProduct.id!, detailProduct.title!,
                    detailProduct.price!);
              },
              child: const Text("Add to cart"),
            ),
          ],
        ),
      ),
    );
  }
}
