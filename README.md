# masterplan

Jawaban praktikum 1 
2. Langkah ini bertujuan untuk menyederhanakan impor file model dalam proyek Flutter. 
Dengan membuat data_layer.dart, kita hanya perlu mengimpor satu file daripada mengimpor setiap model 
secara terpisah. Ini membuat kode lebih rapi, mudah dikelola, dan lebih scalable seiring bertambahnya 
model dalam aplikasi.
3. Variabel plan digunakan untuk menyimpan dan mengelola data rencana (Plan) dalam state agar tampilan 
dapat diperbarui saat ada perubahan. Deklarasi const Plan() digunakan untuk optimasi performa dan menjaga 
konsistensi data sebelum ada modifikasi.
4. Hasil screenshot master plan
![Screenshoot master plan] (images/Hasil ss praktikum 1.png)
5. Kegunaan Method dalam Lifecycle State
initState() (Langkah 11) → Dipanggil saat widget pertama kali dibuat. Method ini menginisialisasi 
scrollController dan menambahkan listener untuk menyembunyikan keyboard saat pengguna menggulir.
dispose() (Langkah 13) → Dipanggil saat widget dihapus dari tree. Method ini digunakan untuk 
membersihkan resource dengan memanggil scrollController.dispose() agar tidak terjadi kebocoran memori.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
//