import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({super.key, required this.logo, required this.title, required this.color});

  final String logo;
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(360),
            gradient: LinearGradient(
              colors: [color , Colors.black],
              begin: AlignmentDirectional.topStart,
              end: Alignment.bottomRight
            )
          ),
          padding: EdgeInsets.zero,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipOval(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(logo,height: 40,),
                  )),
              SizedBox(width: 12,),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Flexible(child: Text(title,style: TextStyle(fontWeight: FontWeight.bold),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
