import 'package:literalink/models/item.dart';
import 'package:flutter/material.dart';


class ItemDetailPage extends StatelessWidget {
  final Item item;

  const ItemDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.fields.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Name: ${item.fields.name}"),
            Text("Amount: ${item.fields.amount}"),
            Text("Price: ${item.fields.price}"),
            Text("Category: ${item.fields.category}"),
            Text("Description: ${item.fields.description}"),
            // Add more fields as needed
          ],
        ),
      ),
    );
  }
}
