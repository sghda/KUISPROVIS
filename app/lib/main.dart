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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: const Text("ini jawaban no 1"));
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
