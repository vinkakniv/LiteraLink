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
