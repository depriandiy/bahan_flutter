import 'package:coba_lagi/models/cart.dart';
import 'package:coba_lagi/providers/1get_carts.dart';
import 'package:coba_lagi/screens/1cart_item.dart';
import 'package:coba_lagi/widgets/0product_grid.dart';
import 'package:coba_lagi/widgets/1badge.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListProduct extends StatelessWidget {
  const ListProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyShop'),
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
      body: const ProductGrid(),
    );
  }
}
