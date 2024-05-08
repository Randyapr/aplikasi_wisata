import 'package:aplikasi_wisata/data/wisata_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AplikasiWisata());
}

class AplikasiWisata extends StatelessWidget {
  const AplikasiWisata({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplikasi Wisata",
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: const WisataPage(),
    );
  }
}
