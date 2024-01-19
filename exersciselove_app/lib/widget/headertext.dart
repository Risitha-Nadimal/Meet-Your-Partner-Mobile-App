import 'package:flutter/material.dart';
 
class headertext extends StatelessWidget {
  headertext({
    super.key,
    required this.head,
  });
  String head;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(head,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
    );
  }
}

  