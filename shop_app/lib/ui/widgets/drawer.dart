import 'package:flutter/material.dart';
import 'package:shop_app/ui/screens/orders.dart';
import 'package:shop_app/ui/screens/products_overview.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: const Text("hello"),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text("Shop"),
            onTap: () => Navigator.of(context)
                .pushReplacementNamed(ProductsOverviewScreen.routeName),
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text("Orders"),
            onTap: () => Navigator.of(context)
                .pushReplacementNamed(OrdersScreen.routeName),
          )
        ],
      ),
    );
  }
}
