import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/main.dart';


class NvaBar extends StatelessWidget {
  const NvaBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavbarController());
    return Scaffold(
      bottomNavigationBar: Obx(
          () =>  SizedBox(
            width: MediaQuery.of(context).size.width * 0.30,
            child: NavigationBar(

                destinations: const [
                  NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                  NavigationDestination(icon: Icon(Icons.folder), label: 'Projects'),
                  NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
                  NavigationDestination(icon: Icon(Icons.video_camera_front_outlined), label: 'Loom'),
                ],
                selectedIndex: controller.selectedIndex.value,
                onDestinationSelected: (index) => controller.selectedIndex.value = index,

            ),
          ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavbarController extends GetxController {
  var selectedIndex= 0.obs;

  final screens = [
    const Homepage(),
    Container(color: Colors.red,),
    Container(color: Colors.green,),
    Container(color: Colors.indigo,),
  ];
}
