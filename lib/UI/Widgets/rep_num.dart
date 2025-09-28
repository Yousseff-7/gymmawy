import 'package:flutter/material.dart';

class RepNum extends StatefulWidget {
  const RepNum({
    super.key,
    required this.reps,
  });

  final String reps;

  @override
  State<RepNum> createState() => _RepNumState();
}

class _RepNumState extends State<RepNum> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Reps'),
        SizedBox(height: 8),
        Container(
          height: 40,
          width: 120,
          decoration: BoxDecoration(
            color: Color.fromRGBO(222, 225, 230, 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(widget.reps),
          ),
        ),
      ],
    );
  }
}