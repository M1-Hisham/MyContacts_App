import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'widget/Grid_View.dart';
import 'widget/social_media_icons.dart';

class MyContacts extends StatelessWidget {
  MyContacts({super.key});
  Map<String, String> SM = {
    'facebook': 'https://www.facebook.com/profile.php?id=100010237626840',
    'instagram': 'https://www.instagram.com/mmohamedhhisham/',
    'linkedin': 'https://www.linkedin.com/in/mohamed-hihsam-99832b1b5/',
    'github': 'https://github.com/M1-Hisham',
    'tiktok': 'https://www.tiktok.com/@mohamed_h_s1',
    'whatsapp': 'https://wa.me/+201151771702',
    'youtube': 'https://www.youtube.com/channel/UCBix7wc55ZcRgKnVgjhD6rw',
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 1, 45),
      body: Container(
        width: double.infinity,
        //color: Colors.red,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                //color: Colors.red,
                //width: 200,
                height: 130,
              ),
              CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/mohamed.JPEG'),
                radius: 130,
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Mohamed Hisham',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '+201151771702',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      launchUrl(Uri.parse('tel:+201151771702'));
                    },
                    icon: Icon(
                      Icons.phone,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ],
              ),
              // Icon(
              //   Icons.abc,
              //   color: Colors.white,
              //   size: 50,
              // ),
              SizedBox(height: 10),
              GridV(SM: SM),
            ],
          ),
        ),
      ),
    );
  }
}
