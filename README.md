---
# Toko Touhou Mobile ᗜˬᗜ
An E-Commerce mobile app for the Touhou Series fandom  

### This E-Commerce Web is made by:
Name: Favian Zhafif Rizqullah Permana  
Student ID: 2306274996  
Class: PBP-D  

---
## Tugas 7 PBP 2024/2025

## Apa yang dimaksud dengan stateless widget dan stateful widget, serta perbedaan diantara keduanya

Stateless widget adalah widget yang tidak memiliki status yang dapat berubah setelah widget itu dibuat. Dengan kata lain, konten atau tampilannya tetap konstan dan tidak bisa berubah sepanjang waktu kecuali widget tersebut direbuild atau diganti dengan widget lain. Widget ini cocok untuk elemen-elemen statis, seperti ikon, teks, atau gambar yang tidak bergantung pada input atau aksi pengguna.Contoh widget yang menggunakan stateless widget: `Text`, `Icon`, `Image`.

Stateful widget adalah widget yang memiliki status atau data yang dapat berubah selama aplikasi berjalan. Setiap perubahan pada status widget ini akan memicu tampilan untuk dibangun ulang (rebuild). Widget ini cocok untuk elemen-elemen yang dinamis dan bergantung pada input pengguna atau perubahan data, seperti tombol yang bisa berubah warna ketika ditekan, atau teks yang berubah sesuai input. Contoh widget yang menggunakan stateful widget: `Checkbox`, `Slider`, `Form`.

Perbedaan
1. Status yang Dapat Berubah
Stateless: Tidak memiliki status yang dapat berubah.
Stateful: Memiliki status yang dapat diubah.

2. Fungsi `setState`
Stateless: Tidak memerlukan `setState`, karena tidak ada data yang berubah.
Stateful: Memerlukan `setState` untuk mengubah data dan memperbarui tampilan widget.

3. Penggunaan
Stateless: Digunakan untuk elemen yang tidak bergantung pada input pengguna atau perubahan data.
Stateful: Digunakan untuk elemen yang dinamis dan berinteraksi dengan pengguna

## Widget yang saya gunakan pada proyek ini
1. Scaffold: Menyediakan struktur dasar halaman, termasuk `AppBar` di bagian atas dan `body` sebagai konten utama. `Scaffold` membantu dalam menampilkan layout aplikasi yang umum digunakan dalam Flutter.

2. AppBar: Widget yang menampilkan bilah aplikasi di bagian atas halaman, biasanya untuk judul atau tindakan penting. Dalam kode ini, `AppBar` digunakan untuk menampilkan judul "Toko Touhou Mobile" dengan latar belakang sesuai tema.

3. Padding: Menyediakan jarak di sekitar widget untuk memberikan ruang di dalam tampilan. Di sini, `Padding` memberikan ruang di sekitar `Column` dalam `body` untuk mengatur tata letak lebih rapi.

4. Column: Menyusun widget secara vertikal. Pada kode ini, `Column` digunakan untuk menyusun elemen-elemen dalam `body`, seperti `Row`, `SizedBox`, dan `Center` secara vertikal.

5. Row: Menyusun widget secara horizontal. Row di sini digunakan untuk menampilkan tiga widget `InfoCard` secara sejajar.

6. InfoCard: Widget yang dirancang khusus untuk menampilkan informasi dalam bentuk kartu, seperti NPM, nama, dan kelas. `InfoCard` ini memiliki title dan content sebagai atributnya.

7. Card: Menyediakan container dengan tampilan kartu yang memiliki bayangan di bawahnya (elevation). Di sini digunakan dalam `InfoCard` untuk menampilkan informasi dengan lebih menonjol.

8. Container: Widget yang fleksibel untuk mengatur tata letak anak-anak widget di dalamnya. Dalam `InfoCard`, Container digunakan untuk mengatur ukuran dan `padding` dari isi kartu.

9. Text: Widget untuk menampilkan teks. Dalam kode ini, Text digunakan untuk menampilkan judul, konten, serta teks lain di halaman.

10. SizedBox: Menyediakan ruang atau jarak antara widget secara vertikal atau horizontal. Di sini, `SizedBox` digunakan untuk memberi jarak antara elemen dalam `InfoCard` dan antara `Row` dan elemen di bawahnya.

11. Center: Menempatkan widget di tengah halaman. Di sini digunakan untuk memusatkan `Column` yang berisi teks sambutan dan `GridView`.

12. GridView.count: Membuat layout grid dengan jumlah kolom tetap. Pada kode ini, `GridView.count` digunakan untuk menampilkan daftar `ItemCard` dalam bentuk grid tiga kolom.

13, ItemCard: Widget khusus untuk menampilkan item dalam grid dengan ikon dan nama item. `ItemCard` memiliki desain berbeda berdasarkan item.name, seperti latar belakang biru untuk "Lihat Produk" dan merah untuk "Logout".

14. Material: Widget untuk membuat efek material pada elemen, seperti warna latar dan radius sudut. Di sini, Material digunakan dalam `ItemCard` untuk memberikan efek klik yang lebih responsif dan gaya material pada tampilan kartu.

15. InkWell: Widget yang memberikan efek sentuhan atau klik dengan riak (ripple effect). `InkWell` di sini membungkus `Container` dalam `ItemCard` untuk memberikan interaksi klik yang memunculkan `SnackBar`.

16. SnackBar: Menampilkan pesan sementara di bagian bawah layar. Dalam `ItemCard`, `SnackBar` digunakan untuk memberikan notifikasi saat item ditekan.

17. Icon: Menampilkan ikon grafis dari Icons. Di dalam `ItemCard`, `Icon` digunakan untuk menampilkan ikon yang sesuai dengan item, seperti `Icons.shop` untuk "Lihat Produk".

18. MediaQuery: Mendapatkan informasi ukuran layar. Dalam `InfoCard`, `MediaQuery` digunakan untuk menyesuaikan lebar `Card` agar proporsional dengan ukuran layar.

## Fungsi dari `setState()` dan variabel apa saja yang berdampak pada fungsi tersebut
`setState()` adalah fungsi yang digunakan dalam **StatefulWidget** untuk memperbarui status widget tersebut. Ketika `setState()` dipanggil, Flutter akan membangun ulang bagian widget yang terdampak oleh perubahan status, memastikan tampilan UI menampilkan data atau perubahan terkini.

Contoh variabel yang terpengaruh oleh `setState()`:

- **items**: Jika daftar `ItemHomepage` diubah (misalnya, menambah atau menghapus item), kita perlu memanggil `setState()` agar tampilan `GridView` dapat diperbarui sesuai dengan daftar terbaru.
- **npm**, **name**, **className**: Jika ada perubahan pada data pengguna (misalnya NPM, nama, atau kelas), `setState()` memungkinkan pembaruan data ini langsung ditampilkan di UI.

Dengan `setState()`, aplikasi akan memperbarui tampilan sesuai dengan data terbaru yang ada pada variabel-variabel tersebut, menjaga sinkronisasi antara data dan tampilan UI.

## Perbedaan `const` dengan `final`
1. Penentuan Nilai
`const`: Nilainya harus ditentukan pada waktu kompilasi, yaitu ketika kode sedang dibangun sebelum aplikasi berjalan. Artinya, nilai `const` harus bersifat konstan dan diketahui sebelum aplikasi dijalankan. Contohnya adalah nilai bilangan atau string literal (3.14, "Halo").

`final`: Nilainya ditentukan sekali saja, tetapi bisa pada waktu kompilasi atau ketika aplikasi berjalan (run-time). `final` memungkinkan nilai yang tidak diketahui hingga aplikasi berjalan, misalnya hasil dari fungsi atau variabel yang diambil dari user input.

2. Penggunaan dalam Objek:
`const`: Dapat digunakan untuk membuat objek yang benar-benar konstan. Objek `const` dianggap immutable, dan semua atributnya juga harus berupa `const`. Objek `const` hanya dibuat satu kali dalam memori (singleton), sehingga sangat efisien dalam hal penggunaan memori.

`final`: Menjadikan sebuah variabel hanya dapat diinisialisasi sekali. Namun, nilai tersebut dapat berupa objek yang masih dapat diubah (mutable). Anda bisa mendeklarasikan variabel final yang nilainya baru diketahui saat runtime, tetapi nilai ini tidak bisa diubah setelah diinisialisasi.

3. Keyword `const` pada Objek dan Widget
`const` sering digunakan pada widget di Flutter untuk meningkatkan efisiensi dan performa, karena widget `const` tidak perlu dibangun ulang jika nilai const tersebut sama. Ini membuat tampilan UI lebih cepat dan lebih ringan.

## Implementasi Checklist Step-by-Step

## Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.
1. Buka terminal atau cmd
2. Buat direktori baru di direktori toko_touhou_mobile
3. Generate proyek baru dengan command:
   ```
   flutter create toko_touhou_mobile
   cd toko_touhou_mobile
   ```
4. Membuat `main.dart` sebagai layout utama dan `menu.dart` untuk menyimpan menu-menu yang akan ditampilkan di halaman utama.
5. Jalankan aplikasi dengan command: ```flutter run```

## Membuat tiga tombol sederhana dengan ikon dan teks untuk: Melihat daftar produk (Lihat Daftar Produk), Menambah produk (Tambah Produk), Logout (Logout)

1. Membuat class `ItemHomePage` dan `ItemCard` untuk melihatkan card di home page
   ```dart
      class ItemHomepage {
      final String name;
      final IconData icon;
    
      ItemHomepage(this.name, this.icon);
    }
    
    class ItemCard extends StatelessWidget {
      final ItemHomepage item;
    
      const ItemCard(this.item, {super.key});
    
      @override
      Widget build(BuildContext context) {
        Color backgroundColor;
        if (item.name == "Lihat Produk") {
          backgroundColor = Colors.blue;
        } else if (item.name == "Logout") {
          backgroundColor = Colors.red;
        } else {
          backgroundColor = Theme.of(context).colorScheme.secondary;
        }
    
        return Material(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
          child: InkWell(
            onTap: () {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(
                    content: Text("Kamu telah menekan tombol ${item.name}!")));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      item.icon,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                      item.name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    }
   ```
2. Membuat array `items` untuk memasukkan tombol-tombol tersebut yang nanti akan di tampilkan melalui class `HomePage` dan panggil class `ItemHomePage`
   ```dart
      final List<ItemHomepage> items = [
      ItemHomepage("Lihat Produk", Icons.shop),
      ItemHomepage("Tambah Produk", Icons.add),
      ItemHomepage("Logout", Icons.logout),
      ];
       ...
         GridView.count(
            primary: true,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            // Agar grid menyesuaikan tinggi kontennya.
            shrinkWrap: true,

            // Menampilkan ItemCard untuk setiap item dalam list items.
            children: items.map((ItemHomepage item) {
              return ItemCard(item);
            }).toList(),
          ),
       ...
   ```
## Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Daftar Produk, Tambah Produk, dan Logout).
```dart
  Widget build(BuildContext context) {
    Color backgroundColor;
    if (item.name == "Lihat Produk") {
      backgroundColor = Colors.blue;
    } else if (item.name == "Logout") {
      backgroundColor = Colors.red;
    } else {
      backgroundColor = Theme.of(context).colorScheme.secondary;
    }

    return Material(
      color: backgroundColor,
    ...
```

##  Memunculkan Snackbar dengan tulisan: "Kamu telah menekan tombol Lihat Daftar Produk" ketika tombol Lihat Daftar Produk ditekan, "Kamu telah menekan tombol Tambah Produk" ketika tombol Tambah Produk ditekan., "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.
Masukkan Logika `onTap` pada `Material`  
```dart
...
  onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
...
```
---

## Tugas 8 PBP 2024/2025

## Kegunaan `const` di Flutter, apa keuntungan ketika menggunakan `const`, kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan

Dalam Flutter, `const` digunakan untuk membuat nilai atau objek yang bersifat compile-time constant, artinya nilai tersebut dihitung saat kompilasi dan tidak akan berubah di waktu eksekusi.

### Kegunaan const dalam Flutter
- Efisiensi Memori, objek `const` hanya dibuat satu kali dalam memori. Jika Anda membuat beberapa objek const dengan nilai yang sama, Flutter hanya akan menyimpan satu salinan objek itu. Ini dapat mengurangi konsumsi memori dan mempercepat eksekusi aplikasi.
- Optimalisasi Performa, karena nilai-nilai `const` dihitung saat kompilasi, aplikasi kita dapat berjalan lebih cepat karena Flutter tidak perlu menghitung ulang nilai tersebut di waktu eksekusi.
- Meningkatkan Konsistensi, menggunakan `const` memastikan bahwa nilai-nilai yang seharusnya tetap tidak akan berubah, sehingga membuat kode lebih aman dan mudah dipahami.

### Keuntungan Menggunakan const
- Mempercepat Render UI, jika kita menggunakan `const` untuk widget statis yang tidak berubah (seperti `Text`, `Icon`, atau `Color`), Flutter dapat mengoptimalkan rendering UI lebih efisien.
- Mencegah Perubahan yang Tidak Diinginkan, dengan mendeklarasikan objek sebagai `const`, kita dapat memastikan bahwa tidak ada perubahan yang dilakukan secara tidak sengaja di objek tersebut.

### Kapan Sebaiknya Menggunakan const
- Widget Statis, menggunakan `const` untuk widget yang tidak berubah selama masa hidup aplikasi, seperti ikon, teks, atau elemen desain yang tidak perlu di-update.
- Nilai Konstan, jika kita memiliki konstanta seperti ukuran font atau margin yang tidak akan berubah, gunakan const untuk mendeklarasikannya.

### Kapan Sebaiknya Tidak Menggunakan const
- Widget Dinamis, jika widget kita akan diperbarui atau nilainya tergantung pada keadaan (misalnya, data yang berasal dari pengguna, API, atau variabel stateful), sebaiknya hindari penggunaan `const`.
- Objek yang Memerlukan Perhitungan Ulang, jika nilai perlu dihitung kembali berdasarkan interaksi pengguna atau perubahan data, `const` tidak bisa digunakan.

##  Perbandingkan penggunaan `Column` dan `Row` pada Flutter dan contoh implementasi dari masing-masing layout widget tersebut

`Column` digunakan untuk menata widget anak dalam arah vertikal, dari atas ke bawah.
contoh implementasi:
```dart
   Column(
       children: [
         // Menampilkan teks sambutan dengan gaya tebal dan ukuran 18.
         const Padding(
           padding: EdgeInsets.only(top: 16.0),
           child: Text(
             'Welcome to Toko Touhou Mobile',
             style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 18.0,
             ),
           ),
         ),

         GridView.count(
           primary: true,
           padding: const EdgeInsets.all(20),
           crossAxisSpacing: 10,
           mainAxisSpacing: 10,
           crossAxisCount: 3,
           shrinkWrap: true,

           children: items.map((ItemHomepage item) {
             return ItemCard(item);
           }).toList(),
         ),
       ],
     ),
```
`Row` digunakan untuk menata widget anak dalam arah horizontal, dari kiri ke kanan.
contoh implementasi:
```dart
   Row(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     children: [
       InfoCard(title: 'NPM', content: npm),
       InfoCard(title: 'Name', content: name),
       InfoCard(title: 'Class', content: className),
     ],
   ),
```

## Elemen input yang saya gunakan pada halaman form yang saya buat pada tugas kali ini dan elemen input Flutter lain yang tidak saya gunakan pada tugas ini
Dalam tugas ini, saya hanya menggunakan elemen input berupa `TextField`, yang berfungsi untuk memasukkan data seperti nama produk, deskripsi, dan amount atau jumlah. Beberapa elemen input lain, seperti `Checkbox`, `Radio`, `Switch`, dan `DropdownButton`, tidak saya gunakan dalam tugas ini. Hal ini karena data yang dimasukkan hanya berupa teks sederhana.

## Cara saya mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten
Untuk menjaga konsistensi dalam aplikasi, tema saya atur menggunakan `ThemeData` pada widget `MaterialApp`. Dengan cara ini, kita dapat menetapkan tema global untuk aplikasi, termasuk warna utama, font, dan elemen lainnya.
```dart 
backgroundColor: Theme.of(context).colorScheme.primary,
```
Pengaturan ini memastikan bahwa seluruh aplikasi memiliki tema yang seragam, dan setiap elemen yang memerlukan tema akan mengikuti konfigurasi yang sudah ditetapkan.

## Cara saya menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter
Navigasi di Flutter dapat dikelola dengan menggunakan `Navigator`. Untuk berpindah antar halaman, kita dapat memakai `Navigator.push()`, sedangkan untuk kembali ke halaman sebelumnya, kita menggunakan `Navigator.pop()`.

Penggunaan push:
```dart
    onTap: () {
       Navigator.pushReplacement(
           context,
           MaterialPageRoute(
             builder: (context) => MyHomePage(),
           ));
     },
```

Penggunaan pop:
```dart
   actions: [
      TextButton(
        child: const Text('OK'),
        onPressed: () {
          Navigator.pop(context);
          _formKey.currentState!.reset();
        },
      ),
    ],
```
---
