import 'package:cash_new_revenue/utils/const.dart';
import 'package:cash_new_revenue/utils/fonts.dart';
import 'package:cash_new_revenue/utils/string.dart';
import 'package:flutter/material.dart';

class Date extends StatefulWidget {
  const Date({Key? key}) : super(key: key);

  @override
  State<Date> createState() => _DateState();
}

class _DateState extends State<Date> {
  DateTime today = DateTime.now();
  int year = DateTime.now().year;
  int month = DateTime.now().month;
  int day = DateTime.now().day;
  bool isChangeDate = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(16, 13, 0, 13),
          child: Text(date, style: sfProText15),
        ),
        TextButton(
          onPressed: () async {
            DateTime? newDate = await showDatePicker(
              context: context,
              initialDate: today,
              firstDate: DateTime(1930),
              lastDate: DateTime(2100),
            );
            if (newDate == null) {
              return;
            } else {
              setState(() {
                int newYear = newDate.year;
                int newMonth = newDate.month;
                int newDay = newDate.day;
                if (newYear == year && newMonth == month && newDay == day) {
                  isChangeDate = false;
                } else {
                  isChangeDate = true;
                  today = newDate;
                }
              });
            }
          },
          child: Text(
              isChangeDate
                  ? '${today.year}/${today.month}/${today.day}'
                  : nowDay,
              style: sfProText16),
        ),
      ],
    );
  }
}
// class Date extends StatelessWidget {
//   const Date({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Container(
//           margin: const EdgeInsets.fromLTRB(16, 13, 0, 13),
//           child: Text(date, style: sfProText15),
//         ),
//         TextButton(
//           onPressed: () {},
//           child: Text(today, style: sfProText16),
//         ),
//       ],
//     );
//   }
// }
