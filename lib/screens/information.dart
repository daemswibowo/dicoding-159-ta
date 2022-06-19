import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse('https://www.dicoding.com/academies/159');

    _launchUrl() async {
      if (!await launchUrl(_url)) throw 'Could not launch $_url';
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Information'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                  child: Column(
                children: [
                  const Text(
                    'Hai dicoding!',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                  const Padding(padding: EdgeInsets.all(4)),
                  const Text(
                    'Terima kasih atas kelasnya, sangat membantu dan mudah untuk saya pahami 🙏🏻',
                    textAlign: TextAlign.center,
                  ),
                  const Padding(padding: EdgeInsets.all(4)),
                  const Text(
                    'Projek ini dibuat oleh Dimas Wibowo. Semata-mata dibuat hanya untuk keperluan belajar dan sebagai proyek akhir saya untuk menyelesaikan course:',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: <Color>[
                                  Color(0xFF0D47A1),
                                  Color(0xFF1976D2),
                                  Color(0xFF42A5F5),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(16.0),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 14),
                          ),
                          onPressed: _launchUrl,
                          child: const Text('"Belajar Membuat Aplikasi Flutter Untuk Pemula"'),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
            ],
          ),
          padding: const EdgeInsets.all(16)),
    );
  }
}
