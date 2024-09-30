import 'dart:async';

import 'package:flutter/material.dart';
import 'package:site_galleria/circle_item.dart';
import 'package:site_galleria/premium_report_screen.dart';

class OrbitScreen extends StatefulWidget {
  const OrbitScreen({super.key});

  @override
  State<OrbitScreen> createState() => _OrbitScreenState();
}

class _OrbitScreenState extends State<OrbitScreen> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const PremiumReportScreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 36, 1),
      body: Center(
          child: Stack(
            children: [
              Positioned.fill(
                child: CustomPaint(
                  painter: OrbitPainter(),
                ),
              ),
              // Central Circle
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset('assets/image_1.png'),
              ),

              //orbit circles
              const Positioned(
                  top: 170,
                  left: 40,
                  child: CircleItem(
                    image: 'assets/business_pic.png',
                    label: 'Business',
                    color: Colors.blueAccent,
                  ),
              ),
              const Positioned(
                top: 220,
                right: 90,
                child: CircleItem(
                  image: 'assets/career_pic.png',
                  label: 'Career',
                  color: Colors.blueAccent,
                ),
              ),
              const Positioned(
            bottom: 350,
            right: 30,
            child: CircleItem(
              image: 'assets/marriage_pic.png',
              label: 'Marriage',
              color: Colors.blueAccent,
            ),
          ),
              const Positioned(
            bottom: 240,
            left: 185,
            child: CircleItem(
              image: 'assets/family_pic.png',
              label: 'Family',
              color: Colors.blueAccent,
            ),
              ),
              const Positioned(
            bottom: 175,
            left: 40,
            child: CircleItem(
              image: 'assets/health_pic.png',
              label: 'Health',
              color: Colors.blueAccent,
            ),
            ),
          ]
        ),
      )
    );
  }
}

class OrbitPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.blue.withOpacity(0.5)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    // Center point of the screen
    final Offset center = Offset(size.width * 0.2, size.height / 2);

    // Drawing concentric circles (orbit paths)
    canvas.drawCircle(center, 140, paint); // First Orbit
    canvas.drawCircle(center, 190, paint); // Second Orbit
    canvas.drawCircle(center, 250, paint); // Third Orbit
    canvas.drawCircle(center, 300, paint); // Third Orbit
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}