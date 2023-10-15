import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QR Code Example'),
        ),
        body: Center(
          child: QRCodeDisplay(qrData: "Your QR Code Data"),
        ),
      ),
    );
  }
}

class QRCodeDisplay extends StatelessWidget {
  final String qrData;

  QRCodeDisplay({required this.qrData});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: QRImage(
            data: qrData,
            version: QRCodeVersion.auto,
            size: 200.0,
          ),
        ),
      ),
    );
  }
}
