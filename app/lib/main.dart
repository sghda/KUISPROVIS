import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:file_picker/file_picker.dart';

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
              clipper: ClipPathClass(),
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
                  fontWeight: FontWeight.bold
                ),
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
                    margin: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 5),
                    // color: Colors.blue,
                    height: 100,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(10),
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
                                      topRight: Radius.circular(10)
                                    )
                                  ),
                                  
                                  child: Center(
                                    child: GestureDetector(
                                      onTap: () async{
                                        FilePickerResult? result = await FilePicker.platform.pickFiles(
                                          type: FileType.custom,
                                          allowedExtensions: ['jpg', 'jpeg', 'png'],
                                        );
                                      },
                                      child: Text(
                                        "Masukkan Foto\nProfil",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ),
                                  )
                                  ),
                              ),
                              
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(35, 60, 95, 1),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)
                                    )
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Ubah",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  )
                                  // color: Color.fromRGBO(35, 60, 95, 1),
                                ),
                              )
                            ],),
                          ),
                        ),
                        SizedBox(width: 10,),
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
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    hintText: "Masukkan Nama Lengkap",
                                    hintStyle: TextStyle(
                                      fontSize: 11,
                                    ),
                                    contentPadding: EdgeInsets.symmetric(vertical: 25, horizontal: 12)
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                    ],),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15, bottom: 5),
                    // color: Colors.red,
                    height: 85,
                    child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "NIK",
                                    style: TextStyle(
                                      color: Color.fromRGBO(35, 60, 95, 1),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    hintText: "Masukkan NIK anda",
                                    hintStyle: TextStyle(
                                      fontSize: 11
                                    ),
                                    // isDense: true,
                                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10)
                                  ),
                                )
                              ],
                            ),
                  ),
                  Container(
                    
                    margin: EdgeInsets.only(left: 15, right: 15, bottom: 5),
                    height: 85,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            // color: Colors.blue,
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Tanggal Lahir",
                                    style: TextStyle(
                                      color: Color.fromRGBO(35, 60, 95, 1),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                // form tanggal 
                                TextField(
                                  // controller: TextEditingController(text: pilihTanggal.toString()),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    hintText: "DD/MM/YYYY",
                                    hintStyle: TextStyle(
                                      fontSize: 11
                                    ),
                                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                    suffixIcon: IconButton(
                                      icon: Icon(Icons.calendar_month),
                                      onPressed: () async {
                                        final DateTime? picked = await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(1900),
                                          lastDate: DateTime.now()
                                        );
                                        if (picked != null && picked != pilihTanggal) {
                                          setState(() {
                                            pilihTanggal = picked;
                                          });
                                        }
                                      },
                                    )

                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),

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
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                // drop down form hint sama ada borrdernya
                                DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                    ),
                                  value: selectedGender,
                                  items: <String>['Laki-laki', 'Perempuan'].map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value, style: TextStyle(fontSize: 11)),
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
                    ],),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15, bottom: 5),
                    // color: Colors.red,
                    height: 85,
                    child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Email",
                                    style: TextStyle(
                                      color: Color.fromRGBO(35, 60, 95, 1),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    hintText: "Masukkan Email anda",
                                    hintStyle: TextStyle(
                                      fontSize: 11
                                    ),
                                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10)
                                  ),
                                )
                              ],
                            ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15, bottom: 5),
                    // color: Colors.red,
                    height: 85,
                    child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Alamat Rumah",
                                    style: TextStyle(
                                      color: Color.fromRGBO(35, 60, 95, 1),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    hintText: "Masukkan Alamat Rumah",
                                    hintStyle: TextStyle(
                                      fontSize: 11
                                    ),
                                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10)
                                  ),
                                )
                              ],
                            ),
                  ),
                  ElevatedButton(
                    onPressed: () => {
                      _showDialog(context)
                    }, 
                    child: Text("Simpan", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    style: ElevatedButton.styleFrom(
                      // ukurannya panjangin sedikit
                      minimumSize: Size(150,50),
                      foregroundColor: Colors.white, backgroundColor: Color.fromRGBO(35, 60, 95, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                  )
                ],
              ),
            )
          ],
        )
    );
  }
  

Widget soalNo2() {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    ),
    body: Center(
      child: Column(
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
                        top: 125, // Atur posisi teks secara vertikal
                        left: 50, // Atur posisi teks secara horizontal
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
                              height:
                                  5, // Jarak antara teks "Hai Budi Martami" dan teks berikutnya
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
                        top: 30, // Atur posisi gambar secara vertikal // bawah
                        left: 20, // Atur posisi gambar secara horizontal
                        child: Image.network(
                          'https://picsum.photos/id/357/600/200',
                          width: 230,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 75, // Atur posisi gambar secara vertikal // bawah
                        right: 40, // Atur posisi gambar secara horizontal
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
            ],
          ),
          SizedBox(height: 30),
          Text(
            "Layanan Prodiax",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                buildStack('Cari dan Pesan', Icons.list, 60.0),
                buildStack('Chat dengan CS', Icons.medical_services, 60.0),
                buildStack('hasil Pemeriksaan', Icons.playlist_add_check, 60.0),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
}

Widget buildStack(String text, IconData iconData, double iconSize) {
  return Container(
    margin: EdgeInsets.all(8.0),
    width: 100,
    height: 130,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: Colors.grey, width: 2),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 6,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          color: Colors.orange,
          size: iconSize,
        ),
        SizedBox(height: 5),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}


class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(size.width / 2, size.height, size.width, size.height - 40);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Profil"),
        content: Text("Data berhasil disimpan"),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("OK"),
          ),
        ],
      );
    },
  );
}