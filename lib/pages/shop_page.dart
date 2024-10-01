import 'package:ecommerce_app/components/my_drawer.dart';
import 'package:ecommerce_app/components/my_product_tile.dart';
import 'package:ecommerce_app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    // access product
    final products = context.watch<Shop>().shop;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Shop Page",
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          elevation: 0,
          actions: [
            // go to cart button
            IconButton(
              onPressed: () => Navigator.pushNamed(context, '/cart_page'),
              icon: const Icon(Icons.shop),
            ),
          ],
        ),
        drawer: const MyDrawer(),
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: ListView(
          children: [
            // shop subtitle
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Center(
                child: Text(
                  "Pick from a selected list of premium producst",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
              ),
            ),

            // product list
            SizedBox(
              height: 550,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  // get each individual product from a shop
                  final product = products[index];

                  // return as a product tile UI
                  return MyProductTile(product: product);
                },
              ),
            ),
          ],
        ));
  }
}
