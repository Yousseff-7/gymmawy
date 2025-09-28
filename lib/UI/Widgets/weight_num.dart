import 'package:flutter/material.dart';
import 'package:gymawy/core/local_storage.dart';

class WeightNum extends StatefulWidget {
  const WeightNum({super.key, required this.weight});

  final String weight;

  @override
  State<WeightNum> createState() => _WeightNumState();
}

class _WeightNumState extends State<WeightNum> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Weight'),
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
            child: Text(widget.weight),
          ),
        ),
      ],
    );
  }
}
