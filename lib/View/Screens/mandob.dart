import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class MandobScreen extends StatelessWidget {
  const MandobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String value = 'flutter';

    List fromCites = [
      'jazan',
      'jeddah',
      'tabuk',
      'riyadh',
    ];
    List toCities = [
      'jazan',
      'jeddah',
      'tabuk',
      'riyadh',
    ];

    final StyleText = TextStyle(fontSize: 24);
    return Container(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('مندوب')],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              ' مدة التوصيل',
              style: StyleText,
            ),
            Text(
              'الاسم',
              style: StyleText,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [Text('مدة التوصيل')],
        ),
        Row(),
      ],
    ));
  }
}
