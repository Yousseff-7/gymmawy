import 'package:flutter/material.dart';
import 'package:gymawy/UI/Widgets/rep_num.dart';
import 'package:gymawy/UI/Widgets/weight_num.dart';

import 'edit_button.dart';


Container Exercise({
  required w,
  required r,
  required Wkey,
  required Rkey,
  required BuildContext context,
  required title,
  required controller,
  required controller2,
  required VoidCallback onDone
}) {
  return Container(
    width: double.infinity,
    height: 170,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(36),
      color: Colors.cyan,
    ),
    child: Column(
      children: [
        Row(
          children: [
            SizedBox(width: 18),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            editButton(
              Wkey: Wkey,
              Rkey: Rkey,
              context: context,
              controller: controller,
              controller2: controller2,
              onDone: (){onDone();},
            ),
            SizedBox(width: 10),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            WeightNum(weight: w),
            RepNum(reps: r),
          ],
        ),
      ],
    ),
  );
}