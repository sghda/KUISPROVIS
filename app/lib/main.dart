import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz UI Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Quiz UI Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Nomor Kelompok:  30',
            ),
            const Text(
              'Mhs 1:  2202046, Nurainun',
            ),
            const Text(
              'Mhs 2:  2207186, Salma Ghaida',
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return soalNo1();
                  }));
                },
                child: const Text('   Jawaban No 1   '),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return soalNo2();
                  }));
                },
                child: const Text('   Jawaban No 2   '),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //jaawaban no 1
  Widget soalNo1() {
    DateTime pilihTanggal = DateTime.now();
    String? selectedGender;
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          backgroundColor: Color.fromRGBO(35, 60, 95, 1),
        ),
        body:
            // const Text("ini jawaban no 1")
            Stack(
          children: [
            ClipPath(
              // clipper: ClipPathClass(),
              child: Container(
                color: Color.fromRGBO(35, 60, 95, 1),
                height: MediaQuery.of(context).size.height * 0.2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Text(
                'Profil',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 10),
                    // color: Colors.blue,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            // width: 50,
                            // height: 50,

                            // color: Colors.green,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10))),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(35, 60, 95, 1),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10))),
                                    // color: Color.fromRGBO(35, 60, 95, 1),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            // color: Colors.yellow,
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Nama Panjang",
                                    style: TextStyle(
                                        color: Color.fromRGBO(35, 60, 95, 1),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: "Masukkan Nama Panjang"),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    // color: Colors.red,
                    height: 100,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "NIK",
                            style: TextStyle(
                                color: Color.fromRGBO(35, 60, 95, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Masukkan NIK"),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Tanggal Lahir",
                                    style: TextStyle(
                                        color: Color.fromRGBO(35, 60, 95, 1),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                // form tanggal
                                TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: "DD/MM/YYYY",
                                      suffixIcon: IconButton(
                                        icon: Icon(Icons.calendar_today),
                                        onPressed: () async {
                                          final DateTime? picked =
                                              await showDatePicker(
                                                  context: context,
                                                  initialDate: DateTime.now(),
                                                  firstDate: DateTime(1900),
                                                  lastDate: DateTime.now());
                                          if (picked != null &&
                                              picked != pilihTanggal) {
                                            setState(() {
                                              pilihTanggal = picked;
                                            });
                                          }
                                        },
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            // color: Colors.yellow,
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Gender",
                                    style: TextStyle(
                                        color: Color.fromRGBO(35, 60, 95, 1),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                // drop down form hint sama ada borrdernya
                                DropdownButton<String>(
                                  value: selectedGender,
                                  items: <String>['Laki-laki', 'Perempuan']
                                      .map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedGender = newValue;
                                    });
                                  },
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    // color: Colors.red,
                    height: 100,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Email",
                            style: TextStyle(
                                color: Color.fromRGBO(35, 60, 95, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Masukkan Email"),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    // color: Colors.red,
                    height: 100,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Alamat Rumah",
                            style: TextStyle(
                                color: Color.fromRGBO(35, 60, 95, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Masukkan Alamat Rumah"),
                        )
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => {},
                    child: Text("Simpan"),
                    style: ElevatedButton.styleFrom(
                        // ukurannya panjangin sedikit
                        minimumSize: Size(150, 50),
                        foregroundColor: Colors.white,
                        backgroundColor: Color.fromRGBO(35, 60, 95, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                  )
                ],
              ),
            )
          ],
        ));
  }

  Widget soalNo2() {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipPath(
                    // clipper: ClipPathClass(),
                    child: Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width * 10,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 244, 85, 1),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(
                              50), // Memberikan lengkungan pada sudut kiri bawah
                          bottomRight: Radius.circular(
                              50), // Memberikan lengkungan pada sudut kanan bawah
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          IconButton(
                            icon: Icon(Icons.shopping_cart),
                            onPressed: () {
                              // Tambahkan fungsi yang ingin dijalankan saat ikon belanja diklik di sini
                            },
                          ),
                          Positioned(
                            top: 125,
                            left: 50,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Hai Budi Martami",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Tetap jaga kesehatan ya",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 30,
                            left: 20,
                            child: Image.network(
                              'https://picsum.photos/id/357/600/200',
                              width: 230,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 75,
                            right: 40,
                            child: Image.network(
                              'https://picsum.photos/id/669/200',
                              width: 75,
                              height: 140,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 210,
                    left: 20,
                    right: 20,
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 190, 199, 206),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 20,
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Cari pemeriksaan kesehatan.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Layanan Prodiax",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black),
                          ),
                          child: Icon(Icons.edit,
                              color: Colors
                                  .orange), // Ubah warna ikon menjadi oranye
                        ),
                        SizedBox(
                            height:
                                5), // Penambahan jarak antara ikon dan teks keterangan
                        Text(
                          "Cari dan pesan",
                          style: TextStyle(
                              fontSize: 14), // Ubah ukuran teks keterangan
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black),
                          ),
                          child: Icon(Icons.chat, color: Colors.orange),
                        ),
                        // SizedBox(
                        //     height:
                        //         5), // Penambahan jarak antara ikon dan teks keterangan
                        Text(
                          "Chat dengan CS",
                          style: TextStyle(
                              fontSize: 14), // Ubah ukuran teks keterangan
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black),
                          ),
                          child: Icon(Icons.edit_document,
                              color: Colors
                                  .orange), // Ubah warna ikon menjadi oranye
                        ),
                        SizedBox(
                            height:
                                2), // Penambahan jarak antara ikon dan teks keterangan
                        Text(
                          "Hasil Pemeriksaan",
                          style: TextStyle(
                              fontSize: 14), // Ubah ukuran teks keterangan
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 50,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(162, 249, 244, 214),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.orange,
                      ),
                      Expanded(
                        child: Text(
                          "   Gunakan Kode Rujukan Dokter",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          // Aksi ketika tombol di kanan diklik
                          // Tambahkan logika untuk berpindah ke halaman lain di sini
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          child: Icon(
                            Icons.arrow_right,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
