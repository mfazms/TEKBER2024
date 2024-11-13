import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class CVPage extends StatelessWidget {
  const CVPage({super.key});

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
            color: Colors.black.withOpacity(0.3), // Overlay hitam semi-transparan untuk kontras
          ),
          // PDF Viewer
          Column(
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                iconTheme: const IconThemeData(color: Colors.white), // Warna ikon back menjadi putih
                title: const Text(
                  'CV Page',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                ),
                centerTitle: true,
              ),
              Expanded(
                child: SfPdfViewer.asset(
                  'assets/files/cv.pdf',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
