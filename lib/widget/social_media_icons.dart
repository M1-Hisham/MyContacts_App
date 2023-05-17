import 'package:flutter/material.dart';
import 'package:lern_app_test/widget/screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SmIcon extends StatelessWidget {
  String Sm;
  String Smlink;
  SmIcon({
    Key? key,
    required this.Sm,
    required this.Smlink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Screen(
                    Smlink: Smlink,
                  )),
        ),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/$Sm'),
          radius: 40,
        ),
      ),
    );
  }
}
