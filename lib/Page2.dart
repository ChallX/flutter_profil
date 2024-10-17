import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Membuat AppBar transparan
      appBar: AppBar(
        elevation: 0, // Menghilangkan bayangan pada AppBar
        backgroundColor: Colors.transparent, // Membuat AppBar transparan
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black), // Warna ikon kembali
          onPressed: () {
            Navigator.of(context).pop(); // Kembali ke halaman sebelumnya
          },
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          // Background image
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "images/background.jpg"), // Ganti dengan path gambar Anda
                fit: BoxFit.cover, // Agar gambar sesuai dengan ukuran layar
              ),
            ),
          ),

          // Konten di atas background
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Spacer untuk menurunkan CircleAvatar
                SizedBox(height: 80), // Atur sesuai dengan kebutuhan

                // Bagian gambar profil dan nama pengguna
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/me.jpg'),
                ),
                SizedBox(height: 10),
                Text(
                  'Louis Marchall Joheart Cardoso',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),

                // Bagian About
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Card(
                    color: Colors.greenAccent,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'About',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Perkenalkan nama saya Louis Marchall Joheart Cardoso, seorang Back-End Developer yang sedang berkembang. Saat ini saya sedang menempuh pendidikan di SMK Wikrama Bogor',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                // Bagian History
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Card(
                    color: Colors.white,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'History',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Saya menempuh pendidikan dasar di SD Mardi Waluya Cibinong. Setelah itu, saya melanjutkan ke SMP Mardi Waluya Cibinong dan masih menempuh pendidikan di SMK Wikrama Bogor. Di Wikrama, saya mengambil jurusan PPLG dan berfokus sebagai seorang Back-End Developer',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                // Bagian Skill
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Card(
                    color: Colors.greenAccent,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tech Stack',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),
                          
                          // Gambar dan nama tech stack dalam Row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    'images/Laravel.png', // Ganti dengan path gambar Laravel
                                    width: 50,
                                    height: 50,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Laravel',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    'images/js.png', // Ganti dengan path gambar Laravel
                                    width: 50,
                                    height: 50,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'JavaScript',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    'images/tailwindcss.png', // Ganti dengan path gambar TailwindCSS
                                    width: 50,
                                    height: 50,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'TailwindCSS',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
