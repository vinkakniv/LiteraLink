// To parse this JSON data, do
//
//     final item = itemFromJson(jsonString);

import 'dart:convert';

List<Item> itemFromJson(String str) => List<Item>.from(json.decode(str).map((x) => Item.fromJson(x)));

String itemToJson(List<Item> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Item {
  Model model;
  int pk;
  Fields fields;

  Item({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    model: modelValues.map[json["model"]]!,
    pk: json["pk"],
    fields: Fields.fromJson(json["fields"]),
  );

  Map<String, dynamic> toJson() => {
    "model": modelValues.reverse[model],
    "pk": pk,
    "fields": fields.toJson(),
  };
}

class Fields {
  String name;
  int amount;
  String description;
  String price;
  int user;
  Category category;

  Fields({
    required this.name,
    required this.amount,
    required this.description,
    required this.price,
    required this.user,
    required this.category,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
    name: json["name"],
    amount: json["amount"],
    description: json["description"],
    price: json["price"],
    user: json["user"],
    category: categoryValues.map[json["category"]]!,
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "amount": amount,
    "description": description,
    "price": price,
    "user": user,
    "category": categoryValues.reverse[category],
  };
}

enum Category {
  BEVARAGE,
  BEVERAGE,
  SNACK
}

final categoryValues = EnumValues({
  "Bevarage": Category.BEVARAGE,
  "Beverage": Category.BEVERAGE,
  "Snack": Category.SNACK
});

enum Model {
  MAIN_ITEM
}

final modelValues = EnumValues({
  "main.item": Model.MAIN_ITEM
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
