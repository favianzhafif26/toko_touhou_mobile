import 'package:flutter/material.dart';
import 'package:toko_touhou_mobile/models/item_entry.dart';
import 'package:toko_touhou_mobile/widgets/left_drawer.dart';
import 'package:toko_touhou_mobile/screens/item_detail.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class ItemEntryPage extends StatefulWidget {
  const ItemEntryPage({super.key});

  @override
  State<ItemEntryPage> createState() => _ItemEntryPageState();
}

class _ItemEntryPageState extends State<ItemEntryPage> {
  Future<List<ItemEntry>> fetchMood(CookieRequest request) async {
    final response = await request.get('http://localhost:8000/json/');
    
    // Melakukan decode response menjadi bentuk json
    var data = response;
    
    // Melakukan konversi data json menjadi object MoodEntry
    List<ItemEntry> listItem = [];
    for (var d in data) {
      if (d != null) {
        listItem.add(ItemEntry.fromJson(d));
      }
    }
    return listItem;
  }

  @override   
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Entry List'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchMood(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'Belum ada data item pada toko touhou.',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => Card(
                    color: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(12.0),
                    ),
                    elevation: 4, // Bayangan Card
                    margin: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12), 
                    child: ListTile(
                      title: Text(
                        "${snapshot.data![index].fields.item}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8),
                          Text(
                            "Price: \$${snapshot.data![index].fields.price}",
                            style: const TextStyle(color: Colors.white),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Desc:\n${snapshot.data![index].fields.description}",
                            style: const TextStyle(color: Colors.white),
                            softWrap:
                                true, // Mendukung teks yang melanjutkan ke baris berikutnya
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ItemDetailPage(
                              item: snapshot.data![index],
                            ),
                          ),
                        );
                      },
                    )),
              );
            }
          }
        },
      ),
    );
  }
}