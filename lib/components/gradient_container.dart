import 'package:flutter/material.dart';
import 'package:roll_dice_app/components/widgets/text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
          Color.fromARGB(255, 240, 193, 37),
          Color.fromARGB(255, 186, 152, 40)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
          )
        ),
        child: Center(
          child: H1Text('Test')
        ),
      );
  }
}