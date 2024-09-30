import 'package:flutter/material.dart';

class CircleItem extends StatelessWidget {
  final String image;
  final String label;
  final Color color;

  const CircleItem({super.key, required this.image, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(0.2),
          ),
          child: Center(child: Image.asset(image, height: 40, width: 40,fit: BoxFit.contain)),
        ),
        const SizedBox(width: 15),
        Text(
          label,
          style: const TextStyle(color: Color.fromRGBO(116, 149, 232, 1), fontSize: 14),
        ),
      ],
    );
  }
}