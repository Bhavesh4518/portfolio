import 'package:flutter/material.dart';
import 'package:portfolio/custom_tooltip.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  void _launchLink(String url) async {
    // Check if the URL starts with 'http' or 'www' and format it
    if (!url.startsWith('http')) {
      url = 'https://$url'; // Add 'https://' if it's not present
    }

    final Uri parsedUrl = Uri.parse(url);

    if (await canLaunchUrl(parsedUrl)) {
      await launchUrl(parsedUrl);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(360),
                  gradient: LinearGradient(
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
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 16,
                          children: [
                            Text(
                              'Bhavesh Lalvani',
                              style: TextStyle(
                                fontSize: 34,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'bhaveshlalvani000@gmail.com',
                          style: TextStyle(
                            fontSize: 21,
                            color: Colors.white24,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Container(
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.indigo.shade900, Colors.black
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                  )
                ),
                padding: const EdgeInsets.all(14),
                child:   Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start ,
                        children: [
                          Text('Contact Me...',style : TextStyle(fontSize: 21,fontWeight: FontWeight.bold)),
                          SizedBox(height: 18,),
                          Text('+916353935586',style : TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.white70)),
                          Text('bhaveshlalvani000@gmail.com',style : TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.white70)),
                          Text('bhaveshlalvani@yahoo.com',style : TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.white70)),
                        ],
                      ),
                    ),

                    SizedBox(width: 56 ,),

                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start ,
                        children: [
                          Text('Find Me Online...',style : TextStyle(fontSize: 21,fontWeight: FontWeight.bold)),
                          SizedBox(height: 18,),
                          Text('LinkedIn',style : TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.white70)),
                          TooltipEmailWidget(message: 'Click to open', texts: 'www.linkedin.com/in/bhavesh-lalvani-419176241', onTap: ()=> _launchLink('www.linkedin.com/in/bhavesh-lalvani-419176241')),
                          SizedBox(height: 12,),
                          Text('GitHub',style : TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.white70)),
                          TooltipEmailWidget(message: 'Click to open', texts: 'https://github.com/Bhavesh4518', onTap: ()=> _launchLink('https://github.com/Bhavesh4518'))

                        ],
                      ),
                    ),


                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
