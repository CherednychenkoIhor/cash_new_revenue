import 'package:cash_new_revenue/utils/colors.dart';
import 'package:flutter/material.dart';

class Date extends StatelessWidget {
  const Date({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            margin: const EdgeInsets.fromLTRB(16, 13, 265, 13),
            child: const Text('Date',
                style: TextStyle(
                    fontFamily: 'SF_Pro_Text',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xB0232C2D)))),
        TextButton(
          onPressed: () {},
          child: const Text('Today',
              textAlign: TextAlign.end,
              style: TextStyle(
                  fontFamily: 'SF_Pro_Text',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Primary)),
        )
      ],
    );
  }
}
