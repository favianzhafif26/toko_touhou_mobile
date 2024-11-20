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

## Tugas 9 PBP 2024/2025

## Mengapa Perlu Membuat Model untuk Pengambilan atau Pengiriman Data JSON
Model membantu dalam:
- Strukturisasi Data: Memetakan data JSON menjadi objek Dart yang terstruktur, sehingga lebih mudah diakses dan digunakan.
- Validasi dan Transformasi: Memastikan data memiliki format dan tipe yang benar.
- Pemeliharaan Kode: Kode menjadi lebih terorganisir karena data memiliki representasi khusus.

Apakah Akan Terjadi Error Jika Tidak Membuat Model? Tidak selalu, tetapi:
- Data JSON harus diproses secara manual, yang rentan terhadap kesalahan.
- Akses ke data menjadi lebih kompleks dan rawan kesalahan tipe data.
- Aplikasi menjadi lebih sulit dikembangkan dan dipelihara.

## Fungsi Library HTTP
- Melakukan HTTP Request: Mengirim permintaan (`GET`, `POST`, `PUT`, `DELETE`) ke server.
- Mengambil Data dari API: Memperoleh respons dalam format JSON atau lainnya.

## Fungsi `CookieRequest` dan Alasan Pentingnya Dibagikan di Aplikasi Flutter
CookieRequest adalah bagian dari package pbp_django_auth yang digunakan untuk:
- Mengelola Autentikasi: Menyimpan sesi login pengguna melalui cookie.
- Menyederhanakan HTTP Request: Mempermudah pengiriman data dengan autentikasi tanpa menambahkan header manual.
- Mendukung Stateful Request: Mengingat status login pengguna di berbagai request.

Mengapa Instance `CookieRequest` Dibagikan? 
Agar data pengguna yang sudah login, seperti status, nama, atau email, dapat diakses dari mana saja di aplikasi.

## Mekanisme Pengiriman Data dari Input hingga Ditampilkan di Flutter
Input Data: Pengguna mengisi data, misalnya produk, di halaman product_entry_form.dart.
Mengirim Request: Data dikirim ke server Django menggunakan http atau CookieRequest dalam format JSON setelah tombol kirim diklik.

Proses di Backend:
- Server Django menerima data melalui urls.py dan memproses logika di views.py.
- Data diproses (misalnya, disimpan atau dibaca dari database), dan respons JSON dikembalikan.
- Menerima Respons: Aplikasi Flutter menerima respons JSON.

Decode Data: Respons JSON diubah menjadi objek Dart menggunakan model.
Menampilkan Data: Data yang sudah dikonversi ditampilkan di antarmuka Flutter.

## Mekanisme Autentikasi (Login, Register, Logout)
### Login
- Input Data: Pengguna memasukkan email dan password di halaman login.
Mengirim Request: Data dikirim ke endpoint login Django menggunakan `CookieRequest`.
- Proses Backend: Django memverifikasi kredensial dan, jika valid, mengirimkan cookie autentikasi.
Menyimpan Status: `Cookie` disimpan di `CookieRequest` untuk keperluan autentikasi selanjutnya.
- Tampilan Menu: Aplikasi menampilkan menu utama sesuai dengan status login.

### Register
- Input Data: Pengguna mengisi informasi akun, seperti nama, email, dan password.
- Mengirim Request: Data dikirim ke endpoint register Django.
- Proses Backend: Django menyimpan data pengguna baru dan mengirimkan respons sukses.
- Notifikasi: Flutter menampilkan pesan berdasarkan respons dan mengarahkan ke halaman login.

### Logout
- Request Logout: Pengguna mengklik tombol logout, dan request dikirim ke Django menggunakan `CookieRequest`.
- Hapus Cookie: Django menghapus sesi pengguna.
- Update Status: Aplikasi mengubah status pengguna menjadi tidak login.
- Navigasi: Pengguna diarahkan kembali ke halaman login.

## Implementasi Checklist Step-by-Step
## Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.
Buat app baru di projek Django kemarin "authentication", dan dalam `views.py` buat fungsi berikut:
```python
   @csrf_exempt
def register(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        username = data['username']
        password1 = data['password1']
        password2 = data['password2']

        # Check if the passwords match
        if password1 != password2:
            return JsonResponse({
                "status": False,
                "message": "Passwords do not match."
            }, status=400)
        
        # Check if the username is already taken
        if User.objects.filter(username=username).exists():
            return JsonResponse({
                "status": False,
                "message": "Username already exists."
            }, status=400)
        
        # Create the new user
        user = User.objects.create_user(username=username, password=password1)
        user.save()
        
        return JsonResponse({
            "username": user.username,
            "status": 'success',
            "message": "User created successfully!"
        }, status=200)
    
    else:
        return JsonResponse({
            "status": False,
            "message": "Invalid request method."
        }, status=400)
```
Membuat file Dart baru bernama `register.dart` di dalam direktori `screens`. Di dalam file tersebut, tambahkan `TextFormField` untuk menerima input username, password, dan konfirmasi password dari pengguna. Selanjutnya, buat sebuah `ElevatedButton` yang, saat ditekan, akan mengirimkan data username dan password dalam bentuk `postJSON` ke Django. Di sisi server, Django akan memproses data ini dengan menjalankan fungsi `register` di `views.py` pada aplikasi `authentication`. Fungsi tersebut akan memberikan balasan berupa `JSONResponse`, yang akan ditangkap oleh Flutter. Berdasarkan respons tersebut, jika pendaftaran berhasil, pengguna akan dialihkan ke halaman login menggunakan `PushReplacement`. Sebaliknya, jika pendaftaran gagal, pengguna akan tetap di halaman registrasi, dan pesan kesalahan akan ditampilkan.

## Membuat halaman login pada proyek tugas Flutter.
Dalam `views.py` dalam `authentication`, membuat fungsi:
```python
   def login(request):
   username = request.POST['username']
   password = request.POST['password']
   user = authenticate(username=username, password=password)
   if user is not None:
       if user.is_active:
           auth_login(request, user)
           # Status login sukses.
           return JsonResponse({
               "username": user.username,
               "status": True,
               "message": "Login sukses!"
               # Tambahkan data lainnya jika ingin mengirim data ke Flutter.
           }, status=200)
       else:
           return JsonResponse({
               "status": False,
               "message": "Login gagal, akun dinonaktifkan."
           }, status=401)

   else:
       return JsonResponse({
           "status": False,
           "message": "Login gagal, periksa kembali email atau kata sandi."
       }, status=401)
```
Pertama, instal paket yang disediakan oleh tim asisten dosen untuk mengintegrasikan sistem autentikasi dengan Django. Jalankan perintah `flutter pub add provider` dan `flutter pub add pbp_django_auth`. Kemudian, di file `main.dart`, ubah `home: MyHomePage()` menjadi `home: const LoginPage()` untuk membuat aplikasi menjadi login-restricted.

Setelah itu, buat file baru bernama `login.dart` di dalam folder `screens`. Di dalam file tersebut, buat widget `build` yang menampilkan `TextField` untuk menerima input username dan password. Tambahkan sebuah tombol submit menggunakan `ElevatedButton`, dan di dalam fungsi `onPressed()`, buat permintaan (request) ke Django App Authentication, memanggil fungsi `login` di `views.py`. Berdasarkan respons dari Django, atur kondisi untuk menentukan apakah login berhasil atau gagal. Jika login berhasil, navigasikan ke `menu.dart` menggunakan `pushReplacement`. Jika login gagal, tetap di halaman login dan tampilkan pesan kesalahan.

## Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
Sudah terjelaskan di poin step sebelumnya.

## Membuat model kustom sesuai dengan proyek aplikasi Django.
Di Django, buat beberapa contoh produk terlebih dahulu menggunakan fitur "add new item". Setelah itu, buka halaman JSON, salin data JSON dalam format pretty print, lalu konversikan data tersebut ke format Dart menggunakan situs web Quicktype. Selanjutnya, buat direktori baru bernama `models` dan tambahkan file baru bernama `item_entry.dart`, lalu tempelkan data JSON yang sudah dikonversi ke dalam file tersebut.

```dart
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

```

## Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy. Tampilkan name, price, dan description dari masing-masing item pada halaman ini.
Buat file baru bernama `list_itementry.dart` di dalam folder `screens`. Di dalam file tersebut, ambil data dari JSON Django dan masukkan ke dalam sebuah list menggunakan loop. Kemudian, buat sebuah `ListView` untuk menampilkan data dalam format kolom. Tampilkan informasi seperti nama produk, harga produk, dan deskripsi produk.

```dart
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
```

## Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
Di dalam `list_itementry.dart`, tambahkan fungsi `onTap` pada setiap item di `ListView`, sehingga saat item tersebut ditekan, dapat menghasilkan respons sesuai keinginan. Gunakan `Navigator.push()` agar memungkinkan kembali ke halaman sebelumnya dengan `pop` di halaman berikutnya. Pada fungsi `onPressed()`, lakukan forward data produk agar bisa diakses di halaman lain.

Selanjutnya, buat file bernama `item_detail.dart` di folder `screens`. Karena data produk telah di-forward dari `list_itementry.dart`, cukup tampilkan data dari setiap field produk di `item_detail.dart`. Tambahkan juga sebuah `ElevatedButton` dengan `onPressed()` yang, ketika ditekan, akan mengembalikan pengguna ke halaman daftar produk menggunakan `Navigator.pop`.

```dart
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
```

```dart
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
```

## Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login.
Ketika login, Flutter mengirimkan informasi username dan password ke Django. Di Django, fungsi login yang berada di `views.py` akan dijalankan, dan dalam fungsi ini digunakan metode `authenticate`.

Metode `authenticate` membatasi hanya pengguna yang telah login yang dapat menambahkan produk. Nantinya, produk akan ditampilkan berdasarkan input yang dimasukkan oleh pengguna tertentu. Jadi, jika login dengan akun pengguna yang berbeda, produk yang dibuat oleh pengguna lain tidak akan muncul dalam daftar produk milik pengguna tersebut.

```dart
   username = request.POST['username']
   password = request.POST['password']
   user = authenticate(username=username, password=password)
```

---
