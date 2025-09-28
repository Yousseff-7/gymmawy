import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:gymawy/core/local_storage.dart';

IconButton editButton({


  required BuildContext context,

  required controller,
  required controller2,
  required Wkey,
  required Rkey,
  required VoidCallback onDone
}) {
  return IconButton(
    onPressed: () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(

            content: Container(
              height: 275,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12),
                  Text('Weight'),
                  TextFormField(controller: controller),
                  SizedBox(height: 28),
                  Text('Reps'),
                  TextFormField(controller: controller2),
                  Spacer(),
                  Center(
                    child: InkWell(
                      onTap: () async{
                        String weight = controller.text;
                        String reps = controller2.text;

                        // Save to local storage
                        try {
                          await StorageService.saveString(Wkey, weight);
                          await StorageService.saveString(Rkey, reps);
                        } catch (e) {
                          log(e.toString());
                        }
                        Navigator.pop(context);
                        onDone();
                      },
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text('Done')),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
    icon: Icon(Icons.edit),
  );
}
