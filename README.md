GIF Praktikum 2

![praktikum2](https://github.com/user-attachments/assets/933f1c53-3202-432e-b7a4-a32926723188)


 
Soal Praktikum 2
1.	Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki sesuai dengan tujuan aplikasi tersebut dibuat.
2.	Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?
3.	Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?
4.	Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
5.	Kumpulkan laporan praktikum Anda berupa doc !

Jawaban Praktikum 2
1.	Program telah berjalan sebagaimana mestinya
2.	InheritedWidget merujuk pada InheritedNotifier<ValueNotifier> yang digunakan dalam class PlanProvider. InheritedNotifier digunakan karena lebih efisien dalam memperbarui UI dibandingkan InheritedWidget biasa. Dengan menggunakan ValueNotifier, hanya widget yang tergantung pada data yang akan diperbarui saat terjadi perubahan, tanpa merender ulang seluruh widget tree.
3.	Method completedCount digunakan untuk menghitung jumlah tugas yang telah selesai, sedangkan completenessMessage digunakan untuk menampilkan pesan status penyelesaian tugas dalam format " out of tasks". Mengapa dilakukan demikian? Agar data dapat diakses dengan lebih mudah, meningkatkan efisiensi dengan menghindari pengulangan logika perhitungan di UI, serta memisahkan data dari tampilan sesuai dengan prinsip separation of concerns.
4.	Pada langkah 9, widget SafeArea ditambahkan di dalam Column, yang berisi teks dari completenessMessage. SafeArea memastikan teks tersebut tidak tertutup oleh elemen sistem seperti notch atau navigation bar. Dengan langkah ini, aplikasi menampilkan pesan jumlah tugas yang selesai dan total tugas yang ada di bagian bawah layar tanpa terhalang UI sistem. Selain itu, implementasi ini juga menunjukkan pemisahan yang baik antara model (Plan) dan view (UI) dalam pengelolaan state aplikasi. (Note: GIF terdapat pada Readme Github)
5.	Done

