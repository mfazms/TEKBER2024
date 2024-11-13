import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background2.png'), // Path gambar background neon
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlay semi-transparan
          Container(
            color: Colors.black.withOpacity(0.7), // Overlay hitam semi-transparan untuk kontras
          ),
          // Main Content
          Column(
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white), // Warna ikon back lebih kontras
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                title: const Text(
                  'About Me',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24, // Ukuran font lebih besar untuk visibilitas
                    fontWeight: FontWeight.bold,
                  ),
                ),
                centerTitle: true,
              ),
              const Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage('assets/images/profile_photo.jpg'),
                      ),
                      SizedBox(height: 16), // Lebih kecil agar lebih rapat
                      Text(
                        'Moehammad Fazle Mawla Sidiki',
                        style: TextStyle(
                          fontSize: 26, // Font lebih besar
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16), // Lebih kecil agar lebih rapat
                      Text(
                        '5026221110',
                        style: TextStyle(
                          fontSize: 18, // Font lebih besar
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Surabaya, 15 September 2003',
                        style: TextStyle(
                          fontSize: 18, // Font lebih besar
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(height: 20),
                      // Divider untuk estetika
                      Divider(
                        color: Colors.white54,
                        thickness: 1,
                        indent: 80,
                        endIndent: 80,
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Hobbies',
                        style: TextStyle(
                          fontSize: 20, // Font lebih besar untuk judul
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Listening to music, Creating videos',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Fun Fact',
                        style: TextStyle(
                          fontSize: 20, // Font lebih besar untuk judul
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text(
                          'I love capturing moments with creative edits.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                            fontStyle: FontStyle.italic,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20),
                      Divider(
                        color: Colors.white54,
                        thickness: 1,
                        indent: 80,
                        endIndent: 80,
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
