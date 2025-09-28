import 'package:flutter/material.dart';
import '../../core/local_storage.dart';
import '../Widgets/exercise.dart';

class BackDay extends StatefulWidget {
  const BackDay({super.key, required this.day});
  final String day;

  @override
  State<BackDay> createState() => _BackDayState();
}

class _BackDayState extends State<BackDay> {
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
    String? savedW1 = await StorageService.getString('w5');
    String? savedW2 = await StorageService.getString('w6');
    String? savedW3 = await StorageService.getString('w7');
    String? savedW4 = await StorageService.getString('w8');
    String? savedR1 = await StorageService.getString('r5');
    String? savedR2 = await StorageService.getString('r6');
    String? savedR3 = await StorageService.getString('r7');
    String? savedR4 = await StorageService.getString('r8');

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
              Wkey: 'w5',
              Rkey: 'r5',
              context: context,
              title: "Lat Pulldown",
              controller: t1,
              controller2: t2,
              onDone: () => getdata(),
            ),
            const SizedBox(height: 16),
            Exercise(
              w: w2,
              r: r2,
              Wkey: 'w6',
              Rkey: 'r6',
              context: context,
              title: "Pull machine 1",
              controller: t3,
              controller2: t4,
              onDone: () => getdata(),
            ),
            const SizedBox(height: 16),
            Exercise(
              w: w3,
              r: r3,
              Wkey: 'w7',
              Rkey: 'r7',
              context: context,
              title: "Narrow lat pulldown",
              controller: t5,
              controller2: t6,
              onDone: () => getdata(),
            ),
            const SizedBox(height: 16),
            Exercise(
              w: w4,
              r: r4,
              Wkey: 'w8',
              Rkey: 'r8',
              context: context,
              title: "Pull machine 2",
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
