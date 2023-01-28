import 'package:flutter/material.dart';
import '../utils/colors.dart';

class MiniAppBar extends StatelessWidget {
  const MiniAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        TextButton(
            onPressed: () {},
            child: const Text('Cansel',
                style: TextStyle(
                    fontFamily: 'SF_Pro_Text',
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Primary))),
        const Text('Income',
            style: TextStyle(
              fontFamily: 'SF_Pro_Text',
              fontSize: 17,
              fontWeight: FontWeight.bold,
            )),
        TextButton(
            onPressed: () {},
            child: const Text('Done',
                style: TextStyle(
                    fontFamily: 'SF_Pro_Text',
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Primary))),
      ],
    );
  }
}
