import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final VoidCallback handler;


  const AdaptiveFlatButton(this.text, this.handler, {super.key});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? CupertinoButton(
      onPressed: handler,
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ) : TextButton(
      style: TextButton.styleFrom(foregroundColor: Colors.purple),
      onPressed: handler,
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
