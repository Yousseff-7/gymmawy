import 'package:flutter/material.dart';
import '../../core/local_storage.dart';
import '../Widgets/exercise.dart';

class ArmDay extends StatefulWidget {
  const ArmDay({super.key, required this.day});
  final String day;

  @override
  State<ArmDay> createState() => _ArmDayState();
}

class _ArmDayState extends State<ArmDay> {
  String? w1 = '';
  String? w2 = '';
  String? w3 = '';
  String? w4 = '';
  String? w5 = '';
  String? w6 = '';
  String? r1 = '';
  String? r2 = '';
  String? r3 = '';
  String? r4 = '';
  String? r5 = '';
  String? r6 = '';

  final TextEditingController a1 = TextEditingController();
  final TextEditingController a2 = TextEditingController();
  final TextEditingController a3 = TextEditingController();
  final TextEditingController a4 = TextEditingController();
  final TextEditingController a5 = TextEditingController();
  final TextEditingController a6 = TextEditingController();
  final TextEditingController a7 = TextEditingController();
  final TextEditingController a8 = TextEditingController();
  final TextEditingController a9 = TextEditingController();
  final TextEditingController a10 = TextEditingController();
  final TextEditingController a11 = TextEditingController();
  final TextEditingController a12 = TextEditingController();

  void getdata() async {
    String? savedW1 = await StorageService.getString('w13');
    String? savedW2 = await StorageService.getString('w14');
    String? savedW3 = await StorageService.getString('w15');
    String? savedW4 = await StorageService.getString('w16');
    String? savedW5 = await StorageService.getString('w17');
    String? savedW6 = await StorageService.getString('w18');

    String? savedR1 = await StorageService.getString('r13');
    String? savedR2 = await StorageService.getString('r14');
    String? savedR3 = await StorageService.getString('r15');
    String? savedR4 = await StorageService.getString('r16');
    String? savedR5 = await StorageService.getString('r17');
    String? savedR6 = await StorageService.getString('r18');

    setState(() {
      w1 = savedW1 ?? '';
      w2 = savedW2 ?? '';
      w3 = savedW3 ?? '';
      w4 = savedW4 ?? '';
      w5 = savedW5 ?? '';
      w6 = savedW6 ?? '';
      r1 = savedR1 ?? '';
      r2 = savedR2 ?? '';
      r3 = savedR3 ?? '';
      r4 = savedR4 ?? '';
      r5 = savedR5 ?? '';
      r6 = savedR6 ?? '';

      // update controllers
      a1.text = w1!;
      a2.text = r1!;
      a3.text = w2!;
      a4.text = r2!;
      a5.text = w3!;
      a6.text = r3!;
      a7.text = w4!;
      a8.text = r4!;
      a9.text = w5!;
      a10.text = r5!;
      a11.text = w6!;
      a12.text = r6!;
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
              Wkey: 'w13',
              Rkey: 'r13',
              context: context,
              title: "Tri cable down",
              controller: a1,
              controller2: a2,
              onDone: () => getdata(),
            ),
            const SizedBox(height: 16),
            Exercise(
              w: w2,
              r: r2,
              Wkey: 'w14',
              Rkey: 'r14',
              context: context,
              title: "Bi machine",
              controller: a3,
              controller2: a4,
              onDone: () => getdata(),
            ),
            const SizedBox(height: 16),
            Exercise(
              w: w3,
              r: r3,
              Wkey: 'w15',
              Rkey: 'r15',
              context: context,
              title: "Rest cable",
              controller: a5,
              controller2: a6,
              onDone: () => getdata(),
            ),
            const SizedBox(height: 16),
            Exercise(
              w: w4,
              r: r4,
              Wkey: 'w16',
              Rkey: 'r16',
              context: context,
              title: "Overhead Tricep Extension",
              controller: a7,
              controller2: a8,
              onDone: () => getdata(),
            ),
            const SizedBox(height: 16),
            Exercise(
              w: w5,
              r: r5,
              Wkey: 'w17',
              Rkey: 'r17',
              context: context,
              title: "Dumbbell bi",
              controller: a9,
              controller2: a10,
              onDone: () => getdata(),
            ),
            const SizedBox(height: 16),
            Exercise(
              w: w6,
              r: r6,
              Wkey: 'w18',
              Rkey: 'r18',
              context: context,
              title: "Rest bar",
              controller: a11,
              controller2: a12,
              onDone: () => getdata(),
            ),
          ],
        ),
      ),
    );
  }
}
