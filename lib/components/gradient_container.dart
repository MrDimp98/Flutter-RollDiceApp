import 'package:flutter/material.dart';
import 'package:roll_dice_app/components/features/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 0, 22, 45), // Dark blue
            Color.fromARGB(255, 0, 25, 49), // Very dark blue
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
          )
        ),
        child: Center(
          child: DiceRoller()
        ),
      );
  }
}