import 'package:flutter/material.dart';
import 'deteksi.dart'; // Import halaman Deteksi

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.pink,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () {
                          // Navigasi ke halaman Deteksi
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PoseYogaDetectionScreen()),
                          );
                        },
                        child: Text(
                          'Deteksi',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.network(
                      'https://via.placeholder.com/300x150',
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Jenis - jenis pose yoga',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: yogaPoses.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.network(
                      yogaPoses[index]['imageUrl'] ?? 'https://via.placeholder.com/100',
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8),
                    Text(yogaPoses[index]['name'] ?? 'Unknown Pose'),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

List<Map<String, String>> yogaPoses = [
  {
    'name': 'adho mukha svanasana',
    'imageUrl': 'https://via.placeholder.com/100',
  },
  {
    'name': 'baddha konasana',
    'imageUrl': 'https://via.placeholder.com/100',
  },
  {
    'name': 'camatkarasana',
    'imageUrl': 'https://via.placeholder.com/100',
  },
  {
    'name': 'dhanurasana',
    'imageUrl': 'https://via.placeholder.com/100',
  },
  {
    'name': 'garudasana',
    'imageUrl': 'https://via.placeholder.com/100',
  },
  {
    'name': 'halasana',
    'imageUrl': 'https://via.placeholder.com/100',
  },
  {
    'name': 'janusirsasana',
    'imageUrl': 'https://via.placeholder.com/100',
  },
  {
    'name': 'kapotasana',
    'imageUrl': 'https://via.placeholder.com/100',
  },
  {
    'name': 'marichyasana',
    'imageUrl': 'https://via.placeholder.com/100',
  },
  {
    'name': 'natarajasana',
    'imageUrl': 'https://via.placeholder.com/100',
  },
  {
    'name': 'padmasana',
    'imageUrl': 'https://via.placeholder.com/100',
  },
  {
    'name': 'savasana',
    'imageUrl': 'https://via.placeholder.com/100',
  },
];
