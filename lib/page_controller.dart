import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/contact_page.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/projects_page.dart';
import 'package:portfolio/skills_page.dart';

class PageNavigationController extends GetxController {
  var currentPage = 0.obs; // Observable page index
  var isHovered = false.obs;

  // Method to change the hover state
  void onHover(bool hovering) {
    isHovered.value = hovering;
  }

  final List<Widget> pages = [
    const Homepage(),
    const SkillsPage(),
    const ProjectsPage(),
    const ContactPage(),
  ];
  PageController pageController = PageController();

  // Animate to the selected page
  void animateToPage(int index) {
    if (index >= 0 && index < pages.length) {
      pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300), // Reduced animation time for faster navigation
        curve: Curves.easeInOut, // Smooth animation curve
      );
      currentPage.value = index;
    }
  }

  // Jump to the selected page without animation
  void changePage(int index) {
    currentPage.value = index;
    pageController.jumpToPage(index);
  }
}
class ScrollControllerX extends GetxController {
  final ScrollController scrollController = ScrollController();

  // Function to scroll right
  void scrollRight() {
    scrollController.animateTo(
      scrollController.offset + 600, // Adjust the scroll distance as needed
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  // Function to scroll left
  void scrollLeft() {
    scrollController.animateTo(
      scrollController.offset - 600, // Adjust the scroll distance as needed
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}
