import 'package:flutter/material.dart';
import 'package:gymawy/UI/Widgets/exercise.dart';
import 'package:gymawy/core/local_storage.dart';

class ChestDay extends StatefulWidget {
  const ChestDay({super.key, required this.day});
  final String day;

  @override
  State<ChestDay> createState() => _ChestDayState();
}

class _ChestDayState extends State<ChestDay> {
  String? w1 = '';
  String? w2 = '';
  String? w3 = '';
  String? w4 = '';
  String? r1 = '';
  String? r2 = '';
  String? r3 = '';
  String? r4 = '';

  final TextEditingController t1 = TextEditingController();
  final TextEditingController t2 = TextEditingController();
  final TextEditingController t3 = TextEditingController();
  final TextEditingController t4 = TextEditingController();
  final TextEditingController t5 = TextEditingController();
  final TextEditingController t6 = TextEditingController();
  final TextEditingController t7 = TextEditingController();
  final TextEditingController t8 = TextEditingController();

  void getdata() async {
    String? savedW1 = await StorageService.getString('w1');
    String? savedW2 = await StorageService.getString('w2');
    String? savedW3 = await StorageService.getString('w3');
    String? savedW4 = await StorageService.getString('w4');
    String? savedR1 = await StorageService.getString('r1');
    String? savedR2 = await StorageService.getString('r2');
    String? savedR3 = await StorageService.getString('r3');
    String? savedR4 = await StorageService.getString('r4');

    setState(() {
      w1 = savedW1 ?? '';
      w2 = savedW2 ?? '';
      w3 = savedW3 ?? '';
      w4 = savedW4 ?? '';
      r1 = savedR1 ?? '';
      r2 = savedR2 ?? '';
      r3 = savedR3 ?? '';
      r4 = savedR4 ?? '';

      // Update controllers
      t1.text = w1!;
      t2.text = r1!;
      t3.text = w2!;
      t4.text = r2!;
      t5.text = w3!;
      t6.text = r3!;
      t7.text = w4!;
      t8.text = r4!;
    });
  }

  @override
  void initState() {
    super.initState();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:
        Text(widget.day, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            Exercise(
              w: w1,
              r: r1,
              Wkey: 'w1',
              Rkey: 'r1',
              context: context,
              title: "Flat dumbbell Press",
              controller: t1,
              controller2: t2,
              onDone: () => setState(() => getdata()),
            ),
            const SizedBox(height: 16),
            Exercise(
              w: w2,
              r: r2,
              Wkey: 'w2',
              Rkey: 'r2',
              context: context,
              title: "Cable down",
              controller: t3,
              controller2: t4,
              onDone: () => setState(() => getdata()),
            ),
            const SizedBox(height: 16),
            Exercise(
              w: w3,
              r: r3,
              Wkey: 'w3',
              Rkey: 'r3',
              context: context,
              title: "Incline dumbbell press",
              controller: t5,
              controller2: t6,
              onDone: () => setState(() => getdata()),
            ),
            const SizedBox(height: 16),
            Exercise(
              w: w4,
              r: r4,
              Wkey: 'w4',
              Rkey: 'r4',
              context: context,
              title: "Cable up",
              controller: t7,
              controller2: t8,
              onDone: () => setState(() => getdata()),
            ),
          ],
        ),
      ),
    );
  }
}
