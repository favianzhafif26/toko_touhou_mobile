import 'package:flutter/material.dart';
import 'package:toko_touhou_mobile/models/item_entry.dart';

class ItemDetailPage extends StatelessWidget {
  final ItemEntry item;

  const ItemDetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "View Product: ${item.fields.item}",
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name: ${item.fields.item}",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 12),
            Text(
              "Description: \$${item.fields.description}",
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 8),
            Text(
              "Price:\n${item.fields.price}",
              style: const TextStyle(color: Colors.white),
              softWrap:
                  true,
            ),
            const SizedBox(height: 8),
            Text(
              "Amount: ${item.fields.amount}",
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 8),
            Text(
              "Filter: ${item.fields.filter}",
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple, // Background color
                foregroundColor: Colors.white, // Font color
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 12.0), // Optional padding
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8.0), // Optional rounded corners
                ),
              ),
              child: const Text("Back"),
            )
          ],
        ),
      ),
    );
  }
}