import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/nback.png'), // Path gambar background
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlay semi-transparan
          Container(
            color: Colors.black.withOpacity(0.6), // Overlay hitam semi-transparan
          ),
          // Main Content
          Column(
            children: [
              AppBar(
                backgroundColor: Colors.transparent, // Membuat AppBar transparan
                elevation: 0,
                title: const Text(
                  'AZEcorp Production',
                  style: TextStyle(
                    color: Colors.white, // Mengubah warna teks AppBar jadi putih
                    fontSize: 40, // Membuat ukuran font lebih besar
                    fontWeight: FontWeight.bold,
                  ),
                ),
                centerTitle: true,
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 80, // Membuat foto profil lebih besar
                        backgroundImage: AssetImage('assets/images/profile_photo.jpg'),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Fezel aka Owner of AZEcorp Production',
                        style: TextStyle(
                          fontSize: 28, // Memperbesar ukuran font untuk nama
                          color: Colors.white, // Mengubah warna teks jadi putih agar kontras
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'A passionate learner and video creator.',
                        style: TextStyle(
                          fontSize: 18, // Memperbesar ukuran font untuk deskripsi
                          color: Colors.white70, // Warna teks lebih terang untuk kontras
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return SimpleDialog(
                                title: const Text('Navigate to', style: TextStyle(color: Colors.black)),
                                children: [
                                  SimpleDialogOption(
                                    child: const Text('About Me', style: TextStyle(color: Colors.black87)),
                                    onPressed: () => Navigator.pushNamed(context, '/about'),
                                  ),
                                  SimpleDialogOption(
                                    child: const Text('CV Page', style: TextStyle(color: Colors.black87)),
                                    onPressed: () => Navigator.pushNamed(context, '/cv'),
                                  ),
                                  SimpleDialogOption(
                                    child: const Text('Contact Page', style: TextStyle(color: Colors.black87)),
                                    onPressed: () => Navigator.pushNamed(context, '/contact'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.pinkAccent, // Warna button lebih cerah
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16), // Ukuran button lebih besar
                        ),
                        child: const Text(
                          'Get to Know More!',
                          style: TextStyle(fontSize: 18), // Ukuran font button lebih besar
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
