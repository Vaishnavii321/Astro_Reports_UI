import 'package:flutter/material.dart';

class BuildReportList extends StatelessWidget {
  const BuildReportList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: const Color.fromRGBO(31, 32, 51, 1),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/marriage_card_pic.png',
                      height: 150,
                      width: 260,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Text(
                                  '₹999.00',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                            Spacer(),
                            Icon(Icons.star, color: Color.fromRGBO(255, 199, 0, 1), size: 18),
                            SizedBox(width: 4),
                            Text(
                                '4.95/5',
                                style: TextStyle(color: Color.fromRGBO(255, 199, 0, 1)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Text(
                            'Marriage Timing Prediction',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Discover the perfect timing for your marriage through the guidance of Vedic Astrology and an advanced AI-ML model.',
                            style: TextStyle(color: Color.fromRGBO(100, 101, 138, 1), fontSize: 12),
                        ),
                        const SizedBox(height: 12),
                        Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        side: const BorderSide(color: Colors.white),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text('View', style: TextStyle(color: Colors.white)),
                    ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromRGBO(12, 53, 158, 1),
                                shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                              child: const Text('Purchase', style: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          )
        );
      }
    );
  }
}