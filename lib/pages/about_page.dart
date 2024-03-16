import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MealsApp Hakkında'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'MealsApp Hakkında',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'MealsApp, lezzetli yemek tariflerini keşfetmenize yardımcı olan bir mobil uygulamadır. '
              'Farklı kategorilerdeki yemekleri göz atabilir, favorilerinizi seçebilir ve özel yemek listeleri oluşturabilirsiniz.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              'Uygulama Hakkında Daha Fazla Bilgi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'MealsApp, Flutter framework kullanılarak geliştirilmiştir. '
              'Ayrıntılı bilgi ve kaynak kodları için GitHub sayfamızı ziyaret edebilirsiniz:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            InkWell(
              onTap: () {
                // GitHub sayfasına yönlendirme işlemi
                // Örneğin: Navigator.push(context, MaterialPageRoute(builder: (context) => GitHubPage()));
              },
              child: const Text(
                'https://github.com/oguzhancotur/MealsApp',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 30, 184, 109),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
