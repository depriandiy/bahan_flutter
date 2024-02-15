import 'package:coba_lagi/providers/1get_carts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartIcon extends StatelessWidget {
  CartIcon({super.key});
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    final dataCart = Provider.of<getCart>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(20),
            child: Container(
              padding: const EdgeInsets.all(35),
              child: Text(
                "Total: \$${dataCart.grandTotal}",
                style: const TextStyle(fontSize: 35),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: dataCart.items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(dataCart.items.values.toList()[index].title),
                  subtitle: Text(
                    "Quantity: ${dataCart.items.values.toList()[index].qty.toString()}",
                  ),
                  trailing: Text(
                    "\$${(dataCart.items.values.toList()[index].qty * dataCart.items.values.toList()[index].price)}",
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
