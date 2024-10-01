import 'package:ecommerce_app/components/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // logo
              DrawerHeader(
                child: Icon(
                  Icons.shop,
                  size: 72,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              MyListTile(
                leading: Icons.home,
                title: "Shop",
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              MyListTile(
                leading: Icons.shop,
                title: "Cart",
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/cart_page');
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 26),
            child: MyListTile(
              leading: Icons.logout,
              title: "Exit",
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/intro_page', (route) => false);
              },
            ),
          ),
        ],
      ),
    );
  }
}
