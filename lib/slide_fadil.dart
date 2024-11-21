import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SlideFadilJaidi extends StatefulWidget {
  const SlideFadilJaidi({super.key});

  @override
  SlideFadilJaidiState createState() => SlideFadilJaidiState();
}

class SlideFadilJaidiState extends State<SlideFadilJaidi> {
  final List<String> daftarUrlGambar = [
    'https://th.bing.com/th/id/OIP.hmYNeKXc0Vkt2cGviBEzoQHaHa?rs=1&pid=ImgDetMain',
  ];

  final String videoUrl = 'https://youtu.be/MAyqzUWdGmA?si=7wXSH4b047bFSRHM';

  Future<void> _launchVideo() async {
    final Uri url = Uri.parse(videoUrl);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fadil Jaidi'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: PageView.builder(
              itemCount: daftarUrlGambar.length,
              itemBuilder: (context, index) {
                return Image.network(
                  daftarUrlGambar[index],
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const CircularProgressIndicator();
                  },
                );
              },
            ),
          ),
          // Tambahkan SizedBox untuk memberi jarak
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _launchVideo,
            child: const Text('Tonton Video Youtube Terbaru'),
          ),
        ],
      ),
    );
  }
}