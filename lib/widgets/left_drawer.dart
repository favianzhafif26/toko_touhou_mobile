import 'package:flutter/material.dart';
import 'package:toko_touhou_mobile/screens/menu.dart';
import 'package:toko_touhou_mobile/screens/itementry_form.dart';
import 'package:toko_touhou_mobile/screens/list_itementry.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'Toko Touhou Mobile',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Toko untuk penggemar berat Touhou series!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.shop),
            title: const Text('Tambah Item'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemEntryFormPage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.shop_2),
            title: const Text('Daftar Item'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ItemEntryPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
