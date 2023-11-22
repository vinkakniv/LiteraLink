import 'package:flutter/material.dart';
import 'package:literalink/screens/menu.dart';
import 'package:literalink/screens/shoplist_form.dart';
import 'package:literalink/screens/list_item.dart';


class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFFB71C1C),
            ),
            child: Column(
              children: [
                Text(
                  'LiteraLink🔖',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text("Add New Item: Quick & Easy Entry!",
                  style: TextStyle(
                    color:  Colors.white60,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Homepage'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.post_add_outlined),
            title: const Text('Add New Item'),
            // Bagian redirection ke ShopFormPage
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FormPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_basket),
            title: const Text('Daftar Item'),
            onTap: () {
              // Route menu ke halaman item
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ItemPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}