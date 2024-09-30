import 'package:flutter/material.dart';
import 'package:site_galleria/report_list.dart';

class PremiumReportScreen extends StatelessWidget {
  const PremiumReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 36, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(24, 24, 36, 1),
        elevation: 0,
        leading: IconButton(
          onPressed: (){},
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: const Text(
          'Premium Reports',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.camera_alt_outlined, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              const Text(
                'Browse our Premium Reports',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 16),
        
              // Search Bar
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(61, 63, 109, 0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Marriage, career, etc.,',
                    hintStyle: TextStyle(color: Color.fromRGBO(100, 101, 138, 1),),
                    border: InputBorder.none,
                    icon: Icon(Icons.search, color: Color.fromRGBO(100, 101, 138, 1),),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              //tab bar
              DefaultTabController(
                length: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TabBar(
                      labelColor: Colors.white,
                      unselectedLabelColor: Color.fromRGBO(100, 101, 138, 1),
                      indicatorColor: Color.fromRGBO(12, 53, 158, 1),
                      tabs: [
                        Tab(text: 'Marriage'),
                        Tab(text: 'Career'),
                        Tab(text: 'Family'),
                        Tab(text: 'Health'),
                      ],
                    ),
                    const SizedBox(height: 20),
      
                    const Text(
                      "Marriage",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromRGBO(255, 255, 255, 0.5)
                      )
                    ),
                    // Tab Bar View Content
                    Container(
                      height: 400,
                      child: const TabBarView(
                        children: [
                          // Content for each tab
                          BuildReportList(),
                          BuildReportList(),
                          BuildReportList(),
                          BuildReportList(),
                        ],
                      ),
                    ),
                  ],
                )
              )
          ],
        ),
      ),
    );
  }
}