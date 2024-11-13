import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  void _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/nback.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlay semi-transparan
          Container(
            color: Colors.black.withOpacity(0.4),
          ),
          // Main Content
          Column(
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                iconTheme: const IconThemeData(color: Colors.white), // Tombol back putih
                title: const Text(
                  'Contact Page',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                ),
                centerTitle: true,
              ),
              Expanded(
                child: Center(
                  child: Column( // Mengganti Row menjadi Column
                    mainAxisAlignment: MainAxisAlignment.center, // Menyusun vertikal di tengah
                    children: [
                      _buildIconButton(
                        FontAwesomeIcons.instagram,
                        'https://instagram.com/hmsi_its',
                      ),
                      _buildIconButton(
                        FontAwesomeIcons.linkedin,
                        'https://www.linkedin.com/in/fazlesidiki/',
                      ),
                      _buildIconButton(
                        FontAwesomeIcons.whatsapp,
                        'https://wa.me/6285156986534',
                      ),
                      _buildIconButton(
                        FontAwesomeIcons.envelope,
                        'mailto:5026221110@student.its.ac.id',
                      ),
                      _buildIconButton(
                        FontAwesomeIcons.github,
                        'https://github.com/mfazms',
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

  Widget _buildIconButton(IconData icon, String url) {
    return IconButton(
      icon: Icon(icon, color: Colors.white, size: 50), // Ukuran ikon lebih besar
      onPressed: () => _launchURL(url),
    );
  }
}
