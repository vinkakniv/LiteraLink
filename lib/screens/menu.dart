import 'package:flutter/material.dart';
import 'package:literalink/widgets/left_drawer.dart';
import 'package:literalink/screens/shoplist_form.dart';
import 'package:literalink/widgets/shop_card.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<ShopItem> items = [
    ShopItem("View Receipt", Icons.receipt_long_outlined, const Color(0xFFE57373)),
    ShopItem("Add New Item", Icons.add_shopping_cart_rounded, const Color(0xFFFf7043)),
    ShopItem("Logout", Icons.logout, const Color(0xFFE53935)),
  ];

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF3E2723),
        title: const Text(
          'Literally Sip & Munch🍬🧃🥡',
          style: TextStyle(
            fontStyle: FontStyle.italic, // Set the fontStyle here
            color:  Color(0xFFEEEEEE),
              fontFamily: 'Segoe UI'
          ),
        ),
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                child: Text(
                  'LiteraLink🔖', // Text yang menandakan toko
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFB71C1C),
                      fontFamily: 'Segoe UI'
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                // Container pada card.
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((ShopItem item) {
                  // Iterasi untuk setiap item
                  return ShopCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



