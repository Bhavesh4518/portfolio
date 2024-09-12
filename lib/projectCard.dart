
import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.title, required this.subtitle, required this.images, this.url, required this.color});

  final String title;
  final String subtitle;
  final String? url;
  final List<String> images;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        gradient: LinearGradient(colors : [
          color, Colors.black
        ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            SizedBox(height: 24,),
            Row(
              children: images.map((imagePath) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20), // Optional padding between images
                  child: Image.asset(imagePath,height: 350,filterQuality: FilterQuality.high,), // Use image path directly
                );
              }).toList(),
            ),
            SizedBox(height: 10,),
            Text(url!,style: TextStyle(fontSize: 14,color: Colors.blue),),
            SizedBox(height: 12,),

            SizedBox(height: 8,),
            Text(subtitle,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white70),),
          ],
        ),
      ),
    );
  }
}
