import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../my_provider.dart';

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
    return Consumer<MyProvider>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(17),
        child: InkWell(
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/$Sm'),
            radius: 40,
          ),
          onDoubleTap: () {
            value.myicon = Sm;
            value.myurl = Smlink;
            value.notifyListeners();
          },
          onTap: () => launchUrl(Uri.parse(Smlink),
              mode: LaunchMode.externalApplication),
        ),
      ),
    );
  }
}
