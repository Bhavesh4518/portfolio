import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:portfolio/page_controller.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PageNavigationController());

    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              // The Drawer is placed as a side navigation menu here
              Drawer(
                backgroundColor: Colors.black38,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    DrawerHeader(
                      padding: EdgeInsets.zero,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.indigo.shade900, Colors.black],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Image.asset('assets/poet.png'),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.person_4_outlined),
                      title: const Text('Who am i'),
                      onTap: () {
                        controller.animateToPage(0);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.leaderboard_outlined),
                      title: const Text('What are my skills'),
                      onTap: () {
                        controller.animateToPage(1);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.folder_copy_outlined),
                      title: const Text('What have I done'),
                      onTap: () {
                        controller.animateToPage(2);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.perm_phone_msg_outlined),
                      title: const Text('Contact Me...'),
                      onTap: () {
                        controller.animateToPage(3);
                      },
                    ),
                  ],
                ),
              ),

              // Main content area
              Expanded(
                child: NotificationListener<ScrollNotification>(
                  onNotification: (ScrollNotification notification) {
                    if (notification is UserScrollNotification) {
                      if (notification.direction == ScrollDirection.reverse) {
                        controller.animateToPage(controller.currentPage.value + 1);
                      } else if (notification.direction == ScrollDirection.forward) {
                        controller.animateToPage(controller.currentPage.value - 1);
                      }
                    }
                    return true;
                  },
                  child: PageView(
                    scrollDirection: Axis.vertical,
                    controller: controller.pageController, // Use controller for navigation
                    children: controller.pages,
                    onPageChanged: (index) {
                      controller.currentPage.value = index;
                    },
                  ),
                ),
              ),
            ],
          ),

          // Navigation button to move up
          Positioned(
            right: 30,
            bottom: 80,
            child: IconButton(
              icon: const Icon(Icons.keyboard_arrow_up_outlined),
              onPressed: () {
                controller.animateToPage(controller.currentPage.value - 1);
              },
              color: Colors.purpleAccent.withOpacity(0.8),
            ),
          ),

          // Navigation button to move down
          Positioned(
            right: 30,
            bottom: 20,
            child: IconButton(
              icon: const Icon(Icons.keyboard_arrow_down_outlined),
              onPressed: () {
                controller.animateToPage(controller.currentPage.value + 1);
              },
              color: Colors.purple.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }
}