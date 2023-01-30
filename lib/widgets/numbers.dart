import 'package:cash_new_revenue/utils/colors.dart';
import 'package:cash_new_revenue/utils/const.dart';
import 'package:cash_new_revenue/utils/fonts.dart';
import 'package:cash_new_revenue/utils/string.dart';
import 'package:flutter/material.dart';

class NumbersOfKeyboard extends StatelessWidget {
  const NumbersOfKeyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 117,
              height: 66,
              decoration: boxDecoration,
              margin: const EdgeInsets.all(6),
              child: Column(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Text('1', style: sfProText25),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 117,
              height: 66,
              decoration: boxDecoration,
              margin: const EdgeInsets.all(6),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('2', style: sfProText25),
                  ),
                  Expanded(
                    child: Text(
                      underNumber2,
                      style: sfProText10,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 117,
              height: 66,
              decoration: boxDecoration,
              margin: const EdgeInsets.all(6),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('3', style: sfProText25),
                  ),
                  Expanded(
                    child: Text(
                      underNumber3,
                      style: sfProText10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 117,
              height: 66,
              decoration: boxDecoration,
              margin: const EdgeInsets.all(6),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('4', style: sfProText25),
                  ),
                  Expanded(
                    child: Text(
                      underNumber4,
                      style: sfProText10,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 117,
              height: 66,
              decoration: boxDecoration,
              margin: const EdgeInsets.all(6),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('5', style: sfProText25),
                  ),
                  Expanded(
                    child: Text(
                      underNumber5,
                      style: sfProText10,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 117,
              height: 66,
              decoration: boxDecoration,
              margin: const EdgeInsets.all(6),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('6', style: sfProText25),
                  ),
                  Expanded(
                    child: Text(
                      underNumber6,
                      style: sfProText10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 117,
              height: 66,
              decoration: boxDecoration,
              margin: const EdgeInsets.all(6),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('7', style: sfProText25),
                  ),
                  Expanded(
                    child: Text(
                      underNumber7,
                      style: sfProText10,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 117,
              height: 66,
              decoration: boxDecoration,
              margin: const EdgeInsets.all(6),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('8', style: sfProText25),
                  ),
                  Expanded(
                    child: Text(
                      underNumber8,
                      style: sfProText10,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 117,
              height: 66,
              decoration: boxDecoration,
              margin: const EdgeInsets.all(6),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('9', style: sfProText25),
                  ),
                  Expanded(
                    child: Text(
                      underNumber9,
                      style: sfProText10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 117,
              height: 66,
              decoration: boxDecoration,
              margin: const EdgeInsets.only(left: 129, top: 6, bottom: 6),
              child: Column(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Text('0', style: sfProText25),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 56),
              child: IconButton(onPressed: () {}, icon: cancel),
            ),
          ],
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.only(right: 14, bottom: 5),
            constraints: const BoxConstraints(maxWidth: 134, maxHeight: 5),
            color: number,
          ),
        ),
      ],
    );
  }
}
