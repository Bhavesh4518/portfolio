import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/page_controller.dart';
import 'package:portfolio/projectCard.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Instantiate the ScrollControllerX using GetX
    final scrollControllerX = Get.put(ScrollControllerX());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Projects',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: scrollControllerX.scrollController, // Assign the GetX ScrollController
                  child: const Row(
                    children: [
                      ProjectCard(
                        title: 'TrendyTreads',
                        subtitle: "Main objectives : For shopping any types of footwear with various\nfeatures like product variations and filters etc.",
                        images: [
                          'assets/tt/homeScreen.png',
                          'assets/tt/storeScreen.png',
                          'assets/tt/checkOut.png'
                        ],
                        url: '',
                        color: Colors.purple,
                      ),
                      SizedBox(width: 12),
                      ProjectCard(
                        title: 'WeatherHub',
                        subtitle: "real-time weather information\ntemperature,wind,etc.",
                        images: [
                          'assets/w1.png'
                        ],
                        url: '',
                        color: Colors.indigo,
                      ),
                      SizedBox(width: 12),
                      ProjectCard(
                        title: 'Expense Tracker',
                        subtitle: "Manage Your Expenses and Incomes\nTrack your transactions",
                        images: [
                          'assets/et/e1.png',
                          'assets/et/e2.png',
                          'assets/et/e11.png',
                          'assets/e6.png'
                        ],
                        url: 'https://github.com/Bhavesh4518/Expense-Tracker',
                        color: Colors.indigo,
                      ),
                      SizedBox(width: 12,),
                      ProjectCard(
                        title: 'Class Keeper',
                        subtitle: 'Keep your classes track with class_keeper\nDeveloped for admin side like a teacher.',
                        images: [
                        'assets/ck/b2.png',
                          'assets/ck/b3.png',
                          'assets/ck/b5.png'
                        ],
                        url: '',
                        color: Colors.indigo,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Left scroll button
            Positioned(
              left: 0,
              top: 50,
              bottom: 0,
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  scrollControllerX.scrollLeft(); // Call the scrollLeft method
                },
                color: Colors.black.withOpacity(0.5), // Customize as needed
              ),
            ),
            // Right scroll button
            Positioned(
              right: 0,
              top: 50,
              bottom: 0,
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  scrollControllerX.scrollRight(); // Call the scrollRight method
                },
                color: Colors.black.withOpacity(0.5), // Customize as needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}
