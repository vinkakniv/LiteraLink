# PBP A - Vinka Alrezky As (2206820200)

- [Assignment 7](#assignment-7)
- [Assignment 8](#assignment-8)


# Assignment 7

### Apa perbedaan utama antara `StatelessWidget` dan `StatefulWidget` dalam konteks pengembangan aplikasi Flutter?
1. `StatelessWidget`:
   - Widget ini tidak berubah sendiri—tampilannya tetap sampai diperbarui oleh widget lain.
   - Digunakan untuk elemen UI yang tidak perlu memperbarui tampilan berdasarkan interaksi pengguna.
   - Alurnya sederhana: mendapat data lewat konstruktor lalu langsung dibangun (Build).
   - Contoh: `Text` dan `IconButton`.
2. `StatefulWidget`:
   - Widget ini dapat mengubah tampilannya sendiri berdasarkan interaksi pengguna atau perubahan data internal.
   - Ideal untuk elemen UI yang interaktif atau yang perlu memperbaharui tampilan sebagai respons terhadap data atau peristiwa tertentu.
   - Memiliki alur yang lebih kompleks: mendapat data, mengelola state internal, lalu membangun tampilan berdasarkan state tersebut.
   - Contoh: `Checkbox` dan `TextField`.
Ringkasnya:
   - `StatelessWidget`: Untuk UI yang tidak perlu berubah—cepat dan efisien.
   - `StatefulWidget`: Untuk UI yang dinamis dan interaktif—fleksibel dan responsif terhadap perubahan.

### Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
Berikut ringkasan fungsional dari widget-widget yang saya gunakan:
  - `MaterialApp`: Root widget untuk mengatur tema dan navigasi.
  - `ThemeData`: Mendefinisikan tema global.
  - `Scaffold`: Struktur dasar halaman dengan AppBar dan Body.
  - `AppBar`: Bar atas dengan judul dan action.
  - `SingleChildScrollView`: Memungkinkan konten di-scroll.
  - `Padding`: Memberi ruang sekeliling konten.
  - `Column`: Menata item-item secara vertikal.
  - `Text`: Menampilkan teks.
  - `GridView`: Menampilkan item dalam grid dua dimensi.
  - `ShopCard`: Widget kustom untuk menampilkan item.
  - `Icon`: Menampilkan ikon.
  - `Material`: Memberikan efek visual Material Design.
  - `InkWell`: Efek visual dan gesture saat ditekan.
  - `Center`: Menempatkan konten di tengah.
  - `TextStyle`: Mendefinisikan gaya teks.
Setiap widget di atas berperan dalam menyusun tampilan dan interaksi dalam aplikasi.


### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step!
1. Pertama, memulai dengan membuat proyek Flutter baru dengan nama `literalink` menggunakan perintah:
    ```
    flutter create literalink
    ```
2. Membuat file baru dengan nama `menu.dart` di dalam direktori `lib` pada proyek `literalink` dan memindahkan class `MyHomePage` serta  dari `main.dart` ke `menu.dart`.
3. Mengubah tema aplikasi di `main.dart` untuk menggunakan `Material Color` dengan memodifikasi `colorScheme`:
    ```
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.red.shade900)
    ```
4. Mengubah state halaman menu `MyHomePage` menjadi `StatelessWidget`.
5. Menambahkan definisi class `ShopItem` yang berisi nama, ikon, dan warna untuk setiap item:
    ```
    class ShopItem {
      final String name;
      final IconData icon;
      final Color color; 

      ShopItem(this.name, this.icon, this.color);
    }
    ```
6. Mendefinisikan list `items` yang berisi objek `ShopItem`:
    ```
    final List<ShopItem> items = [
      ShopItem("View Bookshelf", Icons.view_list_outlined, const Color(0xFFE57373)),
      ShopItem("Add New Title", Icons.post_add_outlined, Color(0xFFFf7043)),
      ShopItem("Logout", Icons.logout, const Color(0xFFE53935)),
    ];
    ```
   Disini saya menambahkan warna berbeda untuk setiap tombol pada class `ShopItem` untuk membedakan antara `View Bookshelf`, ` Add New Title`, dan `Logout`.
7. Membuat `ShopCard` sebagai widget `StatelessWidget` baru untuk menampilkan setiap card.
8. Mengatur setiap tombol pada `ShopCard` untuk menampilkan `SnackBar` dengan pesan khusus setelah ditekan, kurang lebih sama dengan tutorial.
9. Mengatur style seperti warna dan font yang sesuai, saya juga menggunakan icon yang sesuai dengan tema aplikasi.


# Assignment 8

### Perbedaan antara Navigator.push() dan Navigator.pushReplacement()
Dalam Flutter, Navigator.push() dan Navigator.pushReplacement() adalah dua metode yang digunakan untuk navigasi antara halaman, tetapi mereka berbeda dalam cara mereka mengelola tumpukan halaman.
1. `Navigator.push()`
   - Fungsi: Metode ini menambahkan halaman baru ke atas tumpukan navigator tanpa menghapus halaman sebelumnya. Ini berarti halaman baru ditumpuk di atas halaman saat ini.
   - Efek: Saat pengguna menekan tombol kembali, aplikasi akan kembali ke halaman sebelumnya dalam tumpukan.
   - Contoh Penggunaan: Dalam aplikasi e-commerce, ketika pengguna memilih produk untuk melihat detailnya, `Navigator.push()` dapat digunakan untuk menampilkan halaman detail produk. Ini memungkinkan pengguna untuk kembali ke daftar produk dengan menekan tombol kembali.
   ```
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetailPage()),
    );
   ```
2. `Navigator.pushReplacement()`
   - Fungsi: Metode ini menggantikan halaman saat ini dengan halaman baru dalam tumpukan navigator. Halaman saat ini dihapus dan tidak dapat diakses lagi setelah penggantian.
   - Efek: Saat pengguna menekan tombol kembali, mereka tidak akan kembali ke halaman yang digantikan karena telah dihapus dari tumpukan.
   - Contoh Penggunaan: Dalam alur navigasi seperti dari halaman login ke dashboard, `Navigator.pushReplacement()` digunakan. Setelah pengguna berhasil masuk, halaman login digantikan oleh dashboard sehingga pengguna tidak dapat kembali ke halaman login.
   ```
   Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => DashboardPage()),
   );
   ```

### Layout Widget pada Flutter dan Konteks Penggunaannya
Flutter menyediakan berbagai widget layout yang memudahkan pengaturan tampilan UI. Berikut adalah beberapa layout widget utama dan konteks penggunaannya:
1. `Container`
   - Deskripsi: Widget serbaguna yang dapat digunakan untuk membuat kotak dekoratif dengan warna latar belakang, border, dan margin.
   - Konteks Penggunaan: Cocok untuk membuat elemen desain seperti kotak dengan padding, margin, border, atau background color.
2. `Row` dan `Column`
   - Deskripsi: `Row` mengatur child widget-nya secara horizontal. `Column` mengatur child widget-nya secara vertikal.
   - Konteks Penggunaan: Ideal untuk membuat layout linier baik secara horizontal (`Row`) maupun vertikal (`Column`).
3. `Stack`
   - Deskripsi: Memungkinkan widget diletakkan di atas satu sama lain.
   - Konteks Penggunaan: Berguna untuk menumpuk elemen, seperti teks di atas gambar.
4. `GridView`
   - Deskripsi: Menampilkan widget dalam bentuk grid atau matriks.
   - Konteks Penggunaan: Cocok untuk menampilkan data dalam format grid, seperti galeri foto.
5. `ListView`
   - Deskripsi: Menampilkan daftar widget yang dapat discroll.
   - Konteks Penggunaan: Ideal untuk membuat daftar item yang dapat discroll, seperti daftar email atau feed berita.
6. `Expanded` dan `Flexible`
   - Deskripsi: `Expanded` mengatur child widget untuk mengisi ruang yang tersedia. `Flexible` memberikan kontrol lebih lanjut terhadap pembagian ruang yang tersedia.
   - Konteks Penggunaan: Digunakan dalam Row atau Column untuk mengontrol bagaimana child widget membagi ruang yang tersedia.
7. `Padding`
   - Deskripsi: Menambahkan padding di sekitar child widget.
   - Konteks Penggunaan: Berguna untuk memberikan ruang di sekitar elemen UI.
8. `Align` dan `Center`
   - Deskripsi: `Align` mengatur posisi child widget di dalam dirinya. `Center` adalah kasus khusus dari `Align` yang menengahkan child widget.
   - Konteks Penggunaan: Berguna untuk mengatur posisi widget di dalam container.

### Elemen input pada form Flutter 
Berikut adalah jenis elemen input yang digunakan dalam form Flutter program ini:
1. `TextFormField`:
   - Penggunaan:
      - Nama (Name): Untuk memasukkan nama item.
      - Jumlah (Amount): Untuk memasukkan kuantitas item dalam bentuk angka.
      - Deskripsi (Description): Untuk memasukkan deskripsi lebih lanjut tentang item.
      - Harga (Price) : Untuk memasukkan harga dari suatu item
   - Alasan: `TextFormField` memberikan fleksibilitas dalam memasukkan teks bebas, baik untuk data teks singkat (seperti nama) maupun teks panjang (seperti deskripsi). Dalam kasus jumlah, meskipun inputnya berupa angka, TextFormField memungkinkan validasi input sebelum konversi ke tipe data numerik.
2. `DropdownButtonFormField`:
   - Penggunaan: Untuk memilih kategori item dari daftar opsi yang telah ditentukan.
   - Alasan: `DropdownButtonFormField` ideal untuk input dengan pilihan yang tetap, seperti kategori. Ini meminimalkan kesalahan input dari pengguna dan memudahkan validasi data, serta memastikan konsistensi pilihan kategori.

### Penerapan Clean Architecture pada Aplikasi Flutter
Penerapan Clean Architecture dalam aplikasi Flutter melibatkan pemisahan kode menjadi beberapa lapisan dengan tanggung jawab yang jelas. Ini membantu dalam memastikan bahwa aplikasi mudah dipelihara, diuji, dan diperluas.  Clean architecture membagi project ke dalam 3 lapisan yaitu:
1. Lapisan Data & Platform: Lapisan terluar yang berisi kode sumber data (seperti Rest API, local database, Firebase) dan kode platform untuk membangun UI aplikasi (widgets).
2. Lapisan Presentation: Terdiri dari kode yang menghubungkan data dengan UI, termasuk kode untuk state management (seperti provider, controller, BLoC).
3. Lapisan Domain: Lapisan terdalam, berisi business-logic aplikasi, termasuk entitas dan use cases.

### Implementasi step-by-step
1. Menambahkan Drawer Menu Untuk Navigasi. Disini saya membuat file baru di dalam direktori baru widgets dengan nama `left_drawer.dart`. Drawer memiliki dua opsi yaitu `Homepage` dan `Add New Title`.
   ````
   ListTile(
      leading: const Icon(Icons.home_outlined),
      title: const Text('Homepage'),
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
      title: const Text('Add New Title'),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FormPage()));
      },
    ),
   ```
2. Menambahkan Form dan Elemen Input. Disini saya membuat file baru di dalam direktori baru screens dengan nama `shoplist_form.dart`. Kemudian saya menambahkan empat elemen input yaitu `name`, `amount`, `category`, dan `description`.
   Untuk `category` saya menggunakan `DropdownButtonFormField`.
   ```
     Padding(
       padding: const EdgeInsets.all(8.0),
       child:DropdownButtonFormField<String>(
         decoration: InputDecoration(
           labelText: "Category",
           border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(5.0),
           ),
         ),
         value: _category.isNotEmpty ? _category : null, // Penanganan untuk string kosong
         onChanged: (String? newValue) {
           setState(() {
             _category = newValue ?? '';
           });
         },
         validator: (String? value) {
           if (value == null || value.isEmpty) {
             return "Category cannot be empty!";
           }
           return null;
         },
         items: categories.map<DropdownMenuItem<String>>((String value) {
           return DropdownMenuItem<String>(
             value: value,
             child: Text(value),
           );
         }).toList(),
       ),
     ),
   ```
   Setiap elemen input di formulir divalidasi. Saya juga menambahkan tombol save.
3. Membuat pop-up yang berisi data sesuai isi dari formulir setelah menekan tombol Save pada halaman formulir tambah item baru. Kurang lebih sama pada tutorial.
4. Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol `Add New Title` pada halaman utama. Saya menambahkan Fitur Navigasi pada Tombol.
5. Terakhir, saya me-refactoring file dan memindahkan `menu.dart` ke direktori screens.


# Assignment 8

### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Ya, kita dapat melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Dibandingkan dengan pendekatan di mana model didefinisikan terlebih dahulu, pengambilan data JSON tanpa model mungkin kurang ideal dalam situasi di mana struktur data sudah diketahui dan stabil. Dalam kasus seperti itu, mendefinisikan model terlebih dahulu dapat memberikan validasi, organisasi, dan dokumentasi yang lebih baik untuk data, memudahkan pemeliharaan dan pengembangan kode dalam jangka panjang.

### Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
`CookieRequest` dalam aplikasi Flutter berfungsi untuk mengelola cookie pada permintaan HTTP, seperti mengatur, mengirim, dan menerima cookie yang berkaitan dengan sesi pengguna dan otentikasi. Penting untuk membagikan instance `CookieRequest` ke semua komponen di aplikasi untuk memastikan konsistensi dan efisiensi dalam pengelolaan sesi pengguna dan state aplikasi secara keseluruhan. Ini membantu dalam menjaga pengalaman pengguna yang seragam di seluruh aplikasi dan memudahkan dalam pemeliharaan dan modifikasi terkait pengelolaan cookie.

### Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
Awalnya, aplikasi melakukan permintaan data JSON, yang bisa berasal dari API atau file lokal, menggunakan paket seperti `http` untuk permintaan HTTP. Setelah data diterima, langkah berikutnya adalah parsing data JSON tersebut menggunakan dart:convert untuk mengubahnya menjadi struktur data Dart, seperti Map atau List. Meskipun tidak wajib, seringkali data ini dikonversi ke dalam model data khusus, yaitu kelas Dart yang merepresentasikan struktur data tersebut, memudahkan manipulasi dan penggunaan data. Selanjutnya, manajemen state aplikasi dilakukan, yang bisa menggunakan metode seperti `setState`, `Provider`, atau `Bloc`. Data yang telah diolah ini kemudian ditampilkan dalam UI menggunakan berbagai widget Flutter seperti `Text` atau `ListView`. 

### Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Proses autentikasi dimulai ketika pengguna memasukkan data akun mereka (seperti username dan password) melalui form di Flutter App. Setelah data ini dikumpulkan, Flutter mengirimkannya ke server Django melalui permintaan HTTP POST. Server Django, setelah menerima data ini, memproses autentikasi dengan membandingkan kredensial yang diberikan dengan yang ada di database. Setelah verifikasi, Django mengirimkan respons kembali ke aplikasi Flutter, yang berisi hasil autentikasi. Flutter kemudian mengolah respons ini; jika autentikasi berhasil, aplikasi menyimpan token untuk sesi pengguna dan beralih ke tampilan menu atau halaman selanjutnya, sesuai dengan hak akses pengguna.

### Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
Berikut adalah beberapa widget yang saya gunakan:
- `Scaffold`: Struktur dasar visual, memberikan kerangka untuk halaman.
- `AppBar`: Bilah aplikasi di atas layar, menampilkan judul dan tombol navigasi.
- `Text`: Menampilkan teks seperti nama dan deskripsi item.
- `Padding`: Memberikan ruang sekitar elemen, digunakan untuk memberi jarak pada konten.
- `Column`: Menyusun widget secara vertikal, digunakan untuk tata letak teks dan elemen lainnya.
- `FutureBuilder`: Mengelola data asinkron, seperti mengambil data dari API.
- `Center`: Memusatkan widget (seperti loader atau pesan) di tengah layar.
- `CircularProgressIndicator`: Menampilkan animasi loading saat data sedang dimuat.
- `ListView.builder`: Membuat daftar item yang dapat digulir, mengoptimalkan memori.
- `Container`: Wadah umum untuk setiap item, bisa diatur margin dan padding.
- `InkWell`: Membuat teks atau elemen lainnya bisa diklik, digunakan untuk navigasi.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step!
1.Pengaturan Otentikasi pada Django:
Langkah awal adalah menyeting otentikasi pada aplikasi Django. Ini termasuk pembuatan aplikasi otentikasi dengan django-admin startapp authentication dan penyesuaian settings.py.
Sebagai tambahan, saya mengintegrasikan `django-cors-headers` untuk memudahkan komunikasi lintas domain dan menyiapkan views khusus untuk proses login.
2. Integrasi Otentikasi dengan Flutter:
Untuk menyambungkan sistem otentikasi Django ke aplikasi Flutter, saya memanfaatkan package `pbp_django_auth`. Saya mengimplementasikan Provider dengan `CookieRequest` pada widget utama dan membuat `login.dart` yang menangani proses login.
3. Membuat Model Data Sesuai Struktur Django:
Dengan data JSON yang tersedia dari Django, saya menggunakan Quicktype untuk mengonversi data tersebut menjadi model Dart, yang memudahkan pengelolaan data di Flutter.
4. Menampilkan Daftar Item:
Saya membuat file `list_item.dart` yang bertujuan untuk menampilkan informasi setiap item seperti nama, jumlah, deskripsi dari semua item. Disini saya menggunakan `InkWell` sehingga ketika nama item di klik maka akan menuju halaman detail item tersebut.
5. Menampilkan Detail Item:
Saya membuat file `detail_item.dart` yang menampilkan detail dari item yang di klik.
6. Mengimplementasikan Fitur Logout:
Terakhir, saya mengatur logout dengan menambahkan fungsi logout di proyek Django dan implementasikan di aplikasi Flutter. 

  
