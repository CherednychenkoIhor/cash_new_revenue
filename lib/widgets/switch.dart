import 'package:cash_new_revenue/utils/colors.dart';
import 'package:cash_new_revenue/utils/string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SwitchWidget extends StatelessWidget {
  final bool isOn;
  final Function updateIsOn;

  const SwitchWidget({
    Key? key,
    required this.isOn,
    required this.updateIsOn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 14),
      child: Row(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(left: 12),
                child: CupertinoSwitch(
                  trackColor: trackColor,
                  value: isOn,
                  onChanged: (_isOn) {
                    updateIsOn();
                  },
                  activeColor: primary,
                ),
              ),
            ],
          ),
          Flexible(flex: 2, child: Container()),
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: TextFormField(
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: isOn ? primary : trackColor,
                ),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[\$\d]\.?'))
              ],
              // textAlign: TextAlign.start,
              // textDirection: TextDirection.rtl,
              cursorColor: cursorColor,
              // initialValue: '\$0',
              decoration: InputDecoration(
                prefixIcon: isOn
                    ? const Text('')
                    : Text(
                  '-',
                  textAlign: TextAlign.end,
                  style: GoogleFonts.sourceSansPro(
                    textStyle: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: trackColor,
                    ),
                  ),
                ),
                prefix: Text(
                  '\$',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: isOn ? primary : trackColor,
                    ),
                  ),
                ),
                isCollapsed: true,
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                  ),
                ),
                // hintText: '\$',
                // hintStyle: GoogleFonts.poppins(
                //   textStyle: TextStyle(
                //     fontSize: 40,
                //     fontWeight: FontWeight.w500,
                //     color: isOn ? primary : trackColor,
                //   ),
                // ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(style: BorderStyle.solid),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  // child: Row(
//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: <Widget>[
//     Container(
//       padding: const EdgeInsets.only(left: 12),
//       child: CupertinoSwitch(
//         trackColor: trackColor,
//         value: isOn,
//         onChanged: (_isOn) {
//           updateIsOn();
//         },
//         activeColor: primary,
//       ),
//     ),
//     Row(
//       mainAxisAlignment: MainAxisAlignment.end,
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         getMinus,
//         Text(
//           zero,
//           textAlign: TextAlign.end,
//           style: GoogleFonts.poppins(
//             textStyle: TextStyle(
//               fontSize: 40,
//               fontWeight: FontWeight.w500,
//               color: isOn ? primary : trackColor,
//             ),
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.only(right: 14),
//           constraints: const BoxConstraints(
//             maxWidth: 2,
//             maxHeight: 48,
//           ),
//           color: trackColor,
//         ),
//       ],
//     ),
//   ],
// ),
  // Widget get getMinus {
  //   return isOn
  //       ? Container()
  //       : Text(
  //           '-',
  //           textAlign: TextAlign.end,
  //           style: GoogleFonts.sourceSansPro(
  //             textStyle: const TextStyle(
  //               fontSize: 40,
  //               fontWeight: FontWeight.w700,
  //               color: trackColor,
  //             ),
  //           ),
  //         );
  // }
}
