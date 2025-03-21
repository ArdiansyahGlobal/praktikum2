# masterplan

Jawaban praktikum 2
2. InheritedWidget adalah widget yang memungkinkan data diwariskan ke widget lain 
dalam subtree tanpa perlu meneruskan parameter secara eksplisit. Pada kode di atas,
PlanProvider menggunakan InheritedNotifier<ValueNotifier<Plan>>, yang merupakan 
bentuk khusus dari InheritedWidget.
Mengapa InheritedNotifier digunakan?
Karena InheritedNotifier bekerja dengan ValueNotifier, memungkinkan UI otomatis 
diperbarui saat data berubah tanpa perlu memanggil setState(), sehingga lebih efisien
dibandingkan InheritedWidget biasa.
3. ### **Penjelasan Method di Langkah 3**
**Method `get completedCount`**
    - Menghitung jumlah tugas (`tasks`) yang sudah selesai (`complete == true`).
    - Menggunakan `.where()` untuk menyaring tugas yang sudah selesai, lalu `.length` untuk mendapatkan jumlahnya.
**Method `get completenessMessage`**
    - Menghasilkan pesan berupa jumlah tugas yang selesai dibandingkan total tugas.
    - Contohnya: Jika ada **5 tugas** dan **3 sudah selesai**, maka pesan yang dihasilkan adalah **"3 out of 5 tasks"**.
**Mengapa Dilakukan?**
- Memudahkan akses informasi jumlah tugas yang selesai tanpa perlu perhitungan manual di UI.
- Menghindari perhitungan berulang sehingga lebih efisien dan rapi.
- Memberikan **pesan yang informatif** untuk pengguna mengenai progres tugas mereka.
4. Hasil screenshot master plan
![Screenshoot master plan] (images/Hasil ss praktikum 2.png)

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
//