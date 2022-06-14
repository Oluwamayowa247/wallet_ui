import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  final String iconImagePath;
  final String iconText;
  const MyIcon({Key? key, required this.iconImagePath, required this.iconText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Icon
        Container(
          height: 80,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(21),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 40,
                    spreadRadius: 10)
              ]),
          child: Center(
            child: Image.asset(iconImagePath),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        //Text
        Text(
          iconText,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        )
      ],
    );
  }
}
