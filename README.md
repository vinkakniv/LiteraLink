# PBP A - Vinka Alrezky As (2206820200)

- [Assignment 7](#assignment-7)


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


### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step.
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

