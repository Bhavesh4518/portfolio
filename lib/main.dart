import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:portfolio/page_controller.dart';
import 'package:url_launcher/url_launcher.dart';

import 'navigtion_drawer.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // Set your desired color here
    systemNavigationBarIconBrightness: Brightness.dark, // Set the button color brightness here
  ));
  if (!kIsWeb && (defaultTargetPlatform == TargetPlatform.iOS || defaultTargetPlatform == TargetPlatform.android)) {
    runApp(const MobileMessageApp());
  } else {
    runApp(const MyApp());
  }
}

class MobileMessageApp extends StatelessWidget {
  const MobileMessageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.desktop_mac, size: 80, color: Colors.grey),
              SizedBox(height: 20),
              Text(
                'This website/app is designed for desktop use only. Please open this site on a desktop for the best experience.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(
          background: Colors.black,
        ),
      ),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(colorScheme: const ColorScheme.dark(background: Colors.black)),
      home: const DrawerPage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  void _launchEmail(String email) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
      query: 'subject=Hello&body=Hi there!', // Optional: Pre-fill subject and body
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw 'Could not launch $emailUri';
    }
  }
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final controller = Get.put(PageNavigationController());

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              screenWidth < 600 ? 24 : 59,
              24,
              screenWidth < 600 ? 24 : 59,
              24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile container
                Container(
                  width: screenWidth,
                  padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(360),
                    gradient:  LinearGradient(
                      colors: [Colors.indigo.shade900, Colors.black12],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.start,
                    spacing: 16,
                    children: [
                      Container(
                        height: screenWidth < 600 ? 150 : 220,
                        width: screenWidth < 600 ? 150 : 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(360),
                        ),
                        child: Container(
                            child: Image.asset('assets/mypfp.jpg')),
                      ),
                      const SizedBox(width: 8,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            spacing: 16,
                            children: [
                              const Text(
                                'Bhavesh Lalvani',
                                style: TextStyle(
                                  fontSize: 34,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () => controller.animateToPage(2),
                                child: const Text('Projects'),
                              ),
                              TextButton(
                                onPressed: () => controller.animateToPage(1),
                                child: const Text('Skills'),
                              ),
                              TextButton(
                                onPressed: () => controller.animateToPage(3),
                                child: const Text('Contact'),
                              ),
                            ],
                          ),
                          Tooltip(

                            message: 'Click on email to reply', // Tooltip message
                            child: MouseRegion(
                              onEnter: (_) {
                                controller.onHover(true); // Change hover state to true
                              }, onExit: (_) {
                                controller.onHover(false); // Change hover state to false
                              },
                              cursor: SystemMouseCursors.click, // Change cursor to pointer
                              child: GestureDetector(
                                onTap: () {
                                  _launchEmail('bhaveshlalvani000@gmail.com');
                                },
                                child: Obx(() => Text(
                                  'bhaveshlalvani000@gmail.com',
                                  style: TextStyle(
                                    fontSize: 21,
                                    color: controller.isHovered.value
                                        ? Colors.blue.shade900
                                        : Colors.blue, // Change color on hover
                                    decoration: TextDecoration.none,
                                  ),
                                )),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                // Text container
                Container(
                  width: screenWidth < 600
                      ? double.infinity
                      : MediaQuery.of(context).size.width * 0.8,
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                  decoration:  BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(120),
                      bottomRight: Radius.circular(100),
                    ),
                    gradient: LinearGradient(
                      colors: [Colors.black, Colors.indigo.shade900],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
                        child: Text(
                          'As a passionate and driven Flutter Developer, I specialize in creating engaging and high-performance cross-platform applications using Flutter and Dart. '
                              'With a strong foundation in developing intuitive user interfaces and integrating robust functionalities, I have experience building apps for both mobile and web platforms. '
                              '\n',
                            style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(
                        padding:  const EdgeInsets.fromLTRB(24, 0, 24, 0),
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text: 'Education: \n',
                                style: TextStyle(fontWeight: FontWeight.w900,color: Colors.purple),
                              ),
                              TextSpan(
                                text: '\nBCA ',
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                              ),
                              TextSpan(
                                text: '\nGraduated in ',
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70)
                              ),
                              TextSpan(
                                text: '\n2024 ',
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                              ),
                              TextSpan(
                                text: 'from ',
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),

                              ),
                              TextSpan(
                                text: 'SSCCS, Bhavnagar. ',
                                style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                              ),

                            ],
                          ),
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.fromLTRB(24, 12, 24, 12),
                        child: Text(
                              'I am eager to contribute my skills and enthusiasm to projects, continuously learn, and grow within the dynamic field of Flutter development.',
                          style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
