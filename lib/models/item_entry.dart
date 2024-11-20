// To parse this JSON data, do
//
//     final moodEntry = moodEntryFromJson(jsonString);

import 'dart:convert';

List<ItemEntry> itemEntryFromJson(String str) =>
    List<ItemEntry>.from(json.decode(str).map((x) => ItemEntry.fromJson(x)));

String itemEntryToJson(List<ItemEntry> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ItemEntry {
  String model;
  String pk;
  Fields fields;

  ItemEntry({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory ItemEntry.fromJson(Map<String, dynamic> json) => ItemEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
      };
}

class Fields {
  int user;
  String item;
  String description;
  int price;
  int amount;
  String filter;

  Fields({
    required this.user,
    required this.item,
    required this.description,
    required this.price,
    required this.amount,
    required this.filter,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        item: json["item"],
        description: json["description"],
        price: json["price"],
        amount: json["amount"],
        filter: json["mood_intensity"],
      );

  Map<String, dynamic> toJson() => {
        "user": user,
        "item": item,
        "description": description,
        "price": price,
        "amount": amount,
        "filter": filter,
      };
}
