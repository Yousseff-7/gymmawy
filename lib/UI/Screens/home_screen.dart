import 'package:flutter/material.dart';
import 'package:gymawy/UI/Screens/arm_day.dart';
import 'package:gymawy/UI/Screens/back_day.dart';
import 'package:gymawy/UI/Screens/chest_day.dart';
import 'package:gymawy/UI/Screens/shoulder_day.dart';
import '../Widgets/days.dart';
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  String day1='Chest Day';
  String day2='Back Day';
  String day3='Shoulder Day';
  String day4='Arm Day';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Gymawy',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChestDay(day:day1 )),
                );
              },
              child: Days(day: day1),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BackDay(day: day2)),
                );
              },
              child: Days(day: day2,),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShoulderDay(day: day3)),
                );
              },
              child: Days(day: day3,),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ArmDay(day: day4)),
                );
              },
              child: Days(day: day4,),
            ),
          ],
        ),
      ),
    );
  }
}
