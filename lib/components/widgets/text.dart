import 'package:flutter/material.dart';


class AppBarText extends StatelessWidget {
  final String text;
  const AppBarText(this.text, {super.key});

  @override
  Widget build(BuildContext context){
    return
      Text(text,
          style: TextStyle(
              fontSize: 25.5,
              fontWeight: FontWeight.w500,
              color: Colors.white
          ),
        );

  }
}

class H1Text extends StatelessWidget {
  final String text;
  const H1Text(this.text, {super.key});

  @override
  Widget build(BuildContext context){
    return
      Text(
        text, 
        style: TextStyle(
          fontSize: 25.5,
          fontWeight: FontWeight.w500,
        ),
      );

  }
}