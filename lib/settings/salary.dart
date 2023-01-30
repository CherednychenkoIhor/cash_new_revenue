import 'package:cash_new_revenue/utils/colors.dart';
import 'package:cash_new_revenue/utils/const.dart';
import 'package:cash_new_revenue/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:cash_new_revenue/utils/string.dart';

class Salary extends StatelessWidget {
  const Salary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 16),
          child: Text(category, style: sfProText15),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 46,
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  salary,
                  textAlign: TextAlign.end,
                  style: sfProText16,
                ),
              ),
              // width: 61,
              // TextButton(
              //   style: const ButtonStyle(
              //   ),
              //   onPressed: () {},
              //   child: Text(salary, style: sfProText16),
              // ),

              // width: 46,
              // GestureDetector(
              //   onTap: (){},
              //   child: Text(salary, style: sfProText16),
              // ),
            ),
            SizedBox(
              width: 31,
              child: IconButton(
                onPressed: () {},
                icon: navigNext,
                padding: const EdgeInsets.only(top: 4, bottom: 4),
                tooltip: category,
              ),
            ),

            // SizedBox(
            //   width: 27,
            //   child: IconButton(
            //     onPressed: () {},
            //     icon: navigNext,
            //     //padding: const EdgeInsets.only(top: 13, bottom: 13),
            //     tooltip: category,
            //     alignment: Alignment.bottomCenter,
            //   ),
            // ),
          ],
        ),
      ],
    );
  }
}
