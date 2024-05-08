import 'package:aplikasi_wisata/data/wisata.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Wisata wisata;
  const DetailPage(this.wisata, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(wisata.gambar[0]),
            Padding(
              // memberikan semua jarak sebesar 15
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Padding(
                    // memberikan jarak secara vertical (atas & bawah = 10)
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(wisata.nama),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const Icon(Icons.date_range),
                          Text(wisata.hariBuka)
                        ],
                      ),
                      Column(
                        children: [
                          const Icon(Icons.access_time),
                          Text('${wisata.jamBuka} - ${wisata.jamTutup}'),
                        ],
                      ),
                      Column(
                        children: [
                          const Icon(Icons.monetization_on_outlined),
                          Text(wisata.harga)
                        ],
                      ),
                    ],
                  ),

                  // menggunakan sizedbox untuk memberikan jarak antar elemen
                  // ignore: prefer_const_constructors
                  SizedBox(height: 15),
                  Text(wisata.deskripsi),
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: wisata
                    .gambar.length, // Use the length of the list of image URLs
                itemBuilder: (context, index) {
                  return Image.network(
                    wisata.gambar[index], // Get the URL based on the index
                    width: 200,
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
