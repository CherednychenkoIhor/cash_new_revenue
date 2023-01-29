import 'package:cash_new_revenue/utils/colors.dart';
import 'package:cash_new_revenue/utils/const.dart';
import 'package:flutter/material.dart';

class Optional extends StatelessWidget {
  const Optional({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(16, 13, 98, 13),
          child: Text(
            transfer,
            style: sfProText15,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 21,
            top: 12,
            bottom: 12,
          ),
          child: const Text(
            optional,
            textAlign: TextAlign.end,
            style: TextStyle(
              fontFamily: 'SF_Pro_Text',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: optionalColor,
            ),
          ),
        ),
        Expanded(
          child: IconButton(
            onPressed: () {},
            icon: navigNext,
            padding: const EdgeInsets.only(
              top: 14.11,
              bottom: 14.11,
            ),
            alignment: Alignment.bottomLeft,
          ),
        ),
      ],
    );
  }
}
