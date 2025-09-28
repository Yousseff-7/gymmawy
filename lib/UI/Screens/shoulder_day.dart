import 'package:flutter/material.dart';
import '../../core/local_storage.dart';
import '../Widgets/exercise.dart';

class ShoulderDay extends StatefulWidget {
  const ShoulderDay({super.key, required this.day});
  final String day;

  @override
  State<ShoulderDay> createState() => _ShoulderDayState();
}

class _ShoulderDayState extends State<ShoulderDay> {
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
    String? savedW1 = await StorageService.getString('w9');
    String? savedW2 = await StorageService.getString('w10');
    String? savedW3 = await StorageService.getString('w11');
    String? savedW4 = await StorageService.getString('w12');
    String? savedR1 = await StorageService.getString('r9');
    String? savedR2 = await StorageService.getString('r10');
    String? savedR3 = await StorageService.getString('r11');
    String? savedR4 = await StorageService.getString('r12');

    setState(() {
      w1 = savedW1 ?? '';
      w2 = savedW2 ?? '';
      w3 = savedW3 ?? '';
      w4 = savedW4 ?? '';
      r1 = savedR1 ?? '';
      r2 = savedR2 ?? '';
      r3 = savedR3 ?? '';
      r4 = savedR4 ?? '';

      // update controllers
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
        title: Text(widget.day, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            Exercise(
              w: w1,
              r: r1,
              Wkey: 'w9',
              Rkey: 'r9',
              context: context,
              title: "Overhead Press",
              controller: t1,
              controller2: t2,
              onDone: () => getdata(),
            ),
            const SizedBox(height: 16),
            Exercise(
              w: w2,
              r: r2,
              Wkey: 'w10',
              Rkey: 'r10',
              context: context,
              title: "Lateral Raises",
              controller: t3,
              controller2: t4,
              onDone: () => getdata(),
            ),
            const SizedBox(height: 16),
            Exercise(
              w: w3,
              r: r3,
              Wkey: 'w11',
              Rkey: 'r11',
              context: context,
              title: "Front Raises",
              controller: t5,
              controller2: t6,
              onDone: () => getdata(),
            ),
            const SizedBox(height: 16),
            Exercise(
              w: w4,
              r: r4,
              Wkey: 'w12',
              Rkey: 'r12',
              context: context,
              title: "Back shoulder",
              controller: t7,
              controller2: t8,
              onDone: () => getdata(),
            ),
          ],
        ),
      ),
    );
  }
}
