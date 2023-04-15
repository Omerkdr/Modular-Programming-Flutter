// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:qr_flutter/qr_flutter.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';

// void main() => runApp(const MaterialApp(home: QRViewExample()));

// class QRViewExample extends StatefulWidget {
//   const QRViewExample({super.key});

//   @override
//   State<StatefulWidget> createState() => _QRViewExampleState();
// }

// class _QRViewExampleState extends State<QRViewExample> {
//   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
//   QRViewController? controller;
//   String qrText = '';
//   bool cameraOpen = false;

//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('QR Code Scanner')),
//       body: Column(
//         children: [
//           Expanded(
//             flex: 5,
//             child: cameraOpen
//                 ? QRView(
//                     key: qrKey,
//                     onQRViewCreated: _onQRViewCreated,
//                     overlay: QrScannerOverlayShape(
//                         borderColor: Colors.red,
//                         borderRadius: 10,
//                         borderLength: 30,
//                         borderWidth: 10,
//                         cutOutSize: 300),
//                   )
//                 : const Center(child: Text('Kamera kapalı')),
//           ),
//           Expanded(
//             flex: 1,
//             child: Center(
//               child: Text('Scanned QR Code: $qrText'),
//             ),
//           ),
//           const SizedBox(height: 10),
//           ElevatedButton(
//             child: const Text('QR Okut'),
//             onPressed: () {
//               setState(() {
//                 cameraOpen = true;
//               });
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   void _onQRViewCreated(QRViewController controller) {
//     setState(() => this.controller = controller);

//     controller.scannedDataStream.listen((scanData) {
//       setState(() => qrText = scanData.code!);
//       controller.dispose();
//       setState(() => cameraOpen = false);
//     });
//   }
// }
