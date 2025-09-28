import 'package:flutter/material.dart';

class Days extends StatelessWidget {
  final String day;
  const Days({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(36),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Color.fromRGBO(253, 227, 208, 1),
            ),
            child: Center(child: Image.asset('assets/Selection.png')),
          ),
          SizedBox(width: 16),
          Text(
            day
            ,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          Spacer(),
          Icon(Icons.arrow_forward_outlined, color: Colors.blue),
          SizedBox(width: 16),
        ],
      ),
    );
  }
}
