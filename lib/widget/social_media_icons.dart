import 'package:flutter/material.dart';
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
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/$Sm'),
          radius: 40,
        ),
        onTap: () =>
            launchUrl(Uri.parse(Smlink), mode: LaunchMode.externalApplication),
      ),
    );
  }
}
