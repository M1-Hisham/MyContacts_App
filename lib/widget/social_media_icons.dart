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
        onTap: () => showModalBottomSheet(
          context: context,
          builder: (context) => ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black)),
            onPressed: () => launchUrl(Uri.parse(Smlink),
                mode: LaunchMode.externalApplication),
            child: Text('Start $Sm'),
          ),
        ),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/$Sm.png'),
          radius: 40,
        ),
      ),
    );
  }
}
