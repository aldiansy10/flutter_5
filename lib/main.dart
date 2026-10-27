
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LayoutRulesExample(),
  ));
}

class LayoutRulesExample extends StatelessWidget {
  const LayoutRulesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tiga Aturan Membuat Layout Flutter'),
      ),
      body: const MyPages1(),
    );
  }
}

class MyPages1 extends StatelessWidget {
  const MyPages1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '1 & 2. Aturan Constraints (Batas) dan Size (Ukuran)',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Induk memberikan batas ukuran kepada anak, yaitu '
              'lebar 100 sampai 200 dan tinggi 100 sampai 200. '
              'Anak meminta ukuran 500x50, tetapi ukuran akhirnya '
              'menyesuaikan batas yang diberikan induk.',
            ),

            const SizedBox(height: 10),

            // Contoh aturan 1 dan 2
            ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 100,
                maxWidth: 200,
                minHeight: 100,
                maxHeight: 200,
              ),
              child: Container(
                width: 500,
                height: 50,
                color: Colors.blue,
                child: const Text(
                  'Saya minta 500x50, tapi dapatnya 200x100',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
