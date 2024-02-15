import 'package:coba_lagi/models/product.dart';
import 'package:coba_lagi/providers/1get_carts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  // pengaturan widget list product.
  @override
  Widget build(BuildContext context) {
    final dataProduct = Provider.of<Product>(context, listen: false);
    final dataCart = Provider.of<getCart>(context, listen: false);

    return ClipRRect(
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: Consumer<Product>(
            builder: (context, dataProduct, child) => IconButton(
              icon: (dataProduct.isFavorite)
                  ? const Icon(
                      Icons.favorite,
                      color: Colors.amber,
                    )
                  : const Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.amber,
                    ),
              color: Theme.of(context).colorScheme.secondary,
              onPressed: () {
                dataProduct.statusFav();
                print(dataProduct.isFavorite);
              },
            ),
          ),
          title: Text(
            dataProduct.title!,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Add cart successfully!"),
                  duration: Duration(milliseconds: 500),
                ),
              );
              dataCart.addCart(
                  dataProduct.id!, dataProduct.title!, dataProduct.price!);
            },
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              '/detail-product',
              arguments: dataProduct.id,
            );
          },
          child: Image.network(
            dataProduct.imageUrl!,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
