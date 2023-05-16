import 'package:flutter/material.dart';
import 'social_media_icons.dart';

class GridV extends StatelessWidget {
  const GridV({
    super.key,
    required this.SM,
  });

  final Map<String, String> SM;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
    );
  }
}
