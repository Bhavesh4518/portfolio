import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TooltipEmailWidget extends StatelessWidget {
  final String message; // Tooltip message parameter
  final String texts;   // Email address to launch
  final Function onTap; // OnTap function parameter

  final RxBool isHovered = false.obs; // Hover state

  TooltipEmailWidget({
    Key? key,
    required this.message,
    required this.texts,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message, // Tooltip message
      child: MouseRegion(
        onEnter: (_) {
          isHovered.value = true; // Change hover state to true
        },
        onExit: (_) {
          isHovered.value = false; // Change hover state to false
        },
        cursor: SystemMouseCursors.click, // Change cursor to pointer
        child: GestureDetector(
          onTap: () => onTap(), // Execute provided onTap function
          child: Obx(() => Text(
             texts,
            style: TextStyle(
              fontSize: 18,
              color: isHovered.value ? Colors.blue.shade900 : Colors.blue, // Change color on hover
              decoration: TextDecoration.none,
            ),
          )),
        ),
      ),
    );
  }
}
