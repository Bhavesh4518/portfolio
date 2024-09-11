import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/skill_card.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Skills',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
              const SizedBox(height: 32),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.indigo.shade900,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Programming',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 19,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Wrap(
                          spacing: 12,
                          runSpacing: 12,
                          children: const [
                            SkillCard(
                              logo: 'assets/flutter.png',
                              title: 'Flutter',
                              color: Colors.blue,
                            ),
                            SkillCard(
                              logo: 'assets/skills/firebase.png',
                              title: 'Firebase',
                              color: Colors.orange,
                            ),
                            SkillCard(
                              logo: 'assets/skills/dart.png',
                              title: 'Dart',
                              color: Colors.purple,
                            ),
                            SkillCard(
                              logo: 'assets/skills/oop.png',
                              title: 'OOP',
                              color: Colors.blueGrey,
                            ),
                            SkillCard(
                              logo: 'assets/skills/c.png',
                              title: 'C++',
                              color: Colors.indigo,
                            ),
                            SkillCard(
                              logo: 'assets/skills/sql.png',
                              title: 'SQLite',
                              color: Colors.blue,
                            ),
                            SkillCard(
                              logo: 'assets/skills/getx.png',
                              title: 'Getx',
                              color: Colors.purple,
                            ),
                            SkillCard(
                              logo: 'assets/skills/pr.png',
                              title: 'Problem Solving',
                              color: Colors.lightGreen,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Soft Skills',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 19,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Wrap(
                          spacing: 12,
                          runSpacing: 12,
                          children: const [
                            SkillCard(
                              logo: 'assets/skills/com.png',
                              title: 'Communication',
                              color: Colors.green,
                            ),
                            SkillCard(
                              logo: 'assets/skills/create.png',
                              title: 'Creativity',
                              color: Colors.yellow,
                            ),
                            SkillCard(
                              logo: 'assets/skills/pr.png',
                              title: 'Problem Solving',
                              color: Colors.pink,
                            ),
                            SkillCard(
                              logo: 'assets/skills/team.png',
                              title: 'Teamwork',
                              color: Colors.blue,
                            ),
                            SkillCard(
                              logo: 'assets/skills/time.png',
                              title: 'Time Management',
                              color: Colors.purple,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
