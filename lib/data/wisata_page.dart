import 'package:aplikasi_wisata/data/daftar_wisata.dart';
import 'package:aplikasi_wisata/detail_page.dart';
import 'package:flutter/material.dart';

class WisataPage extends StatelessWidget {
  const WisataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        title: const Text("Daftar Wisata"),
      ),
      //body
      body: ListView.builder(
        // jumlah item
        itemCount: daftarWisata.length,
        itemBuilder: (context, index) {
          return Card(
            //cardview
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: Image.network(
                daftarWisata[index].gambar[0],
                width: 100,
                fit: BoxFit.cover,
              ),
              title: Text(daftarWisata[index].nama),
              subtitle: Text(daftarWisata[index].lokasi),
              onTap: () { //randyaprr
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => DetailPage(daftarWisata[index]),
                    ),
                    );
              },
            ),
          );
        },
      ),
    );
  }
}
