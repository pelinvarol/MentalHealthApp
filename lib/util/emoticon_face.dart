import "package:flutter/material.dart";
import 'package:flutter_emoji/flutter_emoji.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticonFace;

  const EmoticonFace({
    Key? key,
    required this.emoticonFace,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue[300], borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.all(14),
      child: Center(
        child: Text(
          emoticonFace,
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
