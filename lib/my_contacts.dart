import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'my_provider.dart';
import 'widget/social_media_icons.dart';

class MyContacts extends StatelessWidget {
  MyContacts({super.key});

  Map<String, String> SM = {
    'facebook.png': 'https://www.facebook.com/profile.php?id=100010237626840',
    'instagram.png': 'https://www.instagram.com/mmohamedhhisham/',
    'linkedin.png': 'https://www.linkedin.com/in/mohamed-hihsam-99832b1b5/',
    'icons8-github-24.png': 'https://github.com/M1-Hisham',
    'tiktok.png': 'https://www.tiktok.com/@mohamed_h_s1',
    'whatsapp.png': 'https://wa.me/+201151771702',
    'youtube.png': 'https://www.youtube.com/channel/UCBix7wc55ZcRgKnVgjhD6rw',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('MY HOME'),
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 3, left: 6),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.home),
            iconSize: 33,
          ),
        ),
        actions: [
          Consumer<MyProvider>(
            builder: (context, value, child) => Padding(
              padding: const EdgeInsets.only(bottom: 2, right: 16),
              child: IconButton(
                onPressed: () {
                  value.myurl == null
                      ? launchUrl(Uri.parse('tel:+201151771702'))
                      : launchUrl(Uri.parse(value.myurl!),
                          mode: LaunchMode.externalApplication);
                },
                icon: value.myicon == null
                    ? Icon(
                        Icons.phone,
                        color: Colors.white,
                        size: 30,
                      )
                    : CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/${value.myicon}'),
                        radius: 40,
                      ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        //color: Colors.red,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
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
              GridView.builder(
                itemCount: SM.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //crossAxisSpacing: 20.0,
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) {
                  return SmIcon(
                    Sm: SM.keys.toList()[index],
                    Smlink: SM.values.toList()[index],
                  );
                },
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
