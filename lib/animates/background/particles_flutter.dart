import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';

class CircularParticleScreen extends StatelessWidget {
  const CircularParticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 216, 23, 226),
      body: CircularParticle(
        width: w,
        height: h,
        particleColor: Colors.white.withOpacity(.6),
        numberOfParticles: 250,
        speedOfParticles: 1.9,
        maxParticleSize: 9,
        awayRadius: 0,
        onTapAnimation: false,
        isRandSize: true,
        isRandomColor: false,
        connectDots: false,
        enableHover: false,
      ),
    );
  }
}
