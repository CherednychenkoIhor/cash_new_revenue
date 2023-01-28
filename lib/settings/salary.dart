import 'package:cash_new_revenue/utils/colors.dart';
import 'package:cash_new_revenue/utils/const.dart';
import 'package:flutter/material.dart';

class Salary extends StatelessWidget {
  const Salary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            margin: const EdgeInsets.fromLTRB(16, 13, 212, 13),
            child: const Text('Category',
                style: TextStyle(
                    fontFamily: 'SF_Pro_Text',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xB0232C2D)))),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
          child: const Text('Salary',
              textAlign: TextAlign.end,
              style: TextStyle(
                  fontFamily: 'SF_Pro_Text',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Primary)),
        ),
        Expanded(child: IconButton(
            onPressed: () {},
            icon: navig_nxt,
            padding: const EdgeInsets.fromLTRB(0, 14.11, 0, 14.11),
            alignment: Alignment.bottomLeft),),
      ],
    );
  }
}
