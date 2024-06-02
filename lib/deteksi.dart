import 'package:flutter/material.dart';
// import 'package:deteksi_yoga/camera.dart';
import 'package:deteksi_yoga/flask_deteksi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PoseYogaDetectionScreen(),
    );
  }
}

class PoseYogaDetectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              color: Colors.pink,
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Spacer(),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                        'assets/profile.jpg'), // Ganti dengan path gambar profil Anda
                  ),
                ],
              ),
            ),
            // Title
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Pose Yoga Detection',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(),
            // Camera Icon
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(20.0),
              child: Icon(
                Icons.camera_alt,
                size: 100,
                color: Colors.grey,
              ),
            ),
            Spacer(),
            // Turn on camera button
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(double.infinity,
                      50), // Tambahkan ini untuk mengatur lebar tombol
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => YoloVideo()),
                  );
                },
                child: Text(
                  'Turn on camera',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
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
