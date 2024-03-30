# KUISPROVIS
No Kelompok : 30

Anggota Kelompok :
1. Nurainun (NIM 2202046)
2. Salma Ghaida (NIM 2207186)

Kelas : C1

Screenshots saat run code :

**Soal 1 :**

![WhatsApp Image 2024-03-30 at 09 14 32_cd84a86b](https://github.com/sghda/KUISPROVIS/assets/123555756/b9659030-ab9c-4775-9143-ecb96bd4b1a0)

Fungsionalitas utama dari widget ini adalah untuk mengumpulkan informasi pengguna seperti foto profil, nama, NIK, tanggal lahir, jenis kelamin, email, dan alamat rumah. Ketika user mengklik ikon kalender pada bagian "Tanggal Lahir", akan muncul dialog untuk memilih tanggal. Pengguna juga dapat memilih jenis kelamin dari dropdown menu yang disediakan.
Juga ketika pengguna selesai mengisi formulir dan menekan tombol "Simpan", akan muncul dialog konfirmasi (dengan memanggil _showDialog(context)), yang memberikan konfirmasi kepada pengguna bahwa profil telah disimpan.
Pada bagian "Masukkan Foto Profil", terdapat sebuah GestureDetector yang menangani event onTap. Ketika pengguna menekan bagian ini, maka akan terjadi aksi untuk memilih foto profil. Aksi ini diimplementasikan dalam metode async _pickImage(). Kemudian, metode _pickImage() memanggil fungsi FilePicker.platform.pickFiles() untuk memilih file gambar dari penyimpanan perangkat.

**Soal 2 :**

![WhatsApp Image 2024-03-30 at 09 14 31_4d849347](https://github.com/sghda/KUISPROVIS/assets/123555756/0ef164a1-7a17-48df-a23f-6e64b0b508b6)

Fungsionalitas utama dari tampilan ini adalah untuk menampilkan berbagai fitur yang tersedia, seperti pencarian layanan kesehatan, pesan kepada layanan pelanggan, melihat hasil pemeriksaan, dan menggunakan kode rujukan dokter dan pengguna dapat berpindah antar layar menggunakan BottomNavigationBar.

