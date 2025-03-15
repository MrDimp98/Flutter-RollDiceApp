import 'dart:math';
import 'dart:async';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  
  var activeDiceNumber = 1;
  bool isRolling = false;

  void rollDice() {
    if (isRolling) return;

    setState(() {
      isRolling = true;
    });


    int count = 0;
    Timer.periodic(Duration(milliseconds: 200), (timer){
      var diceRoll =  randomizer.nextInt(6) + 1;
      setState(() {
        activeDiceNumber = diceRoll;

      });

      count++;
      if (count >= 10) { // Stop after 2 seconds (10 * 200ms = 2000ms)
        timer.cancel();
        setState(() {
          isRolling = false;
        });
      }
    });
  }

  @override
  Widget build(context) {
    return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedSwitcher(
                duration: Duration(milliseconds: 200),
                transitionBuilder: (child, animation) {
                  return RotationTransition(
                    turns: Tween(begin: 0.0, end: 1.0).animate(animation),
                    child: child,
                  );
                },
                child: Image.asset(
                  'assets/images/dice-$activeDiceNumber.png',
                  key: ValueKey<int>(activeDiceNumber), // Ensures smooth transition
                  width: 200,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: isRolling ? null : rollDice,
                style: TextButton.styleFrom(
         
                  // foregroundColor: Colors.white,
                  textStyle: TextStyle(
                    fontSize: 20
                  )
                  ),
                child: const Text('Roll Dice'),
                )
            ],
          );
  }
}