import 'package:cevawallet/Const/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../data/home_category_option_data.dart';

class WithdrawList extends StatelessWidget {
  const WithdrawList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      for (final withdraw in withdrawList)
        Padding(
          padding: const EdgeInsets.only(left: 35, right: 10),
          child: Column(
            children: [
              Container(
                width: 78,
                height: 78,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    withdraw.icon,
                    fit: BoxFit.none,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: Text(
                  withdraw.label,
                  style: kTextLabelStyle,
                ),
              )
            ],
          ),
        ),
    ]);
  }
}
