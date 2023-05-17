import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Screen extends StatelessWidget {
  String Smlink;
  Screen({
    super.key,
    required this.Smlink,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 1, 45),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.red)),
          onPressed: () => launchUrl(Uri.parse(Smlink),
              mode: LaunchMode.externalApplication),
          child: Text('Start Social Media'),
        ),
      ),
    );
  }
}
