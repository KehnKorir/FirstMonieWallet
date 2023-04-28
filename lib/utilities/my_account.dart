import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Const/constants.dart';

class MyAccounts extends StatelessWidget {
  final double balance;
  final int addMoney;
  final Color cardColor;

  const MyAccounts({
    Key? key,
    required this.balance,
    required this.addMoney,
    required this.cardColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 13),
        width: 350,
        height: 160,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: kTertiarycolor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Available Balance',
                  style: TextStyle(fontSize: 18),
                ),
                SvgPicture.asset('assets/view.svg'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SvgPicture.asset('assets/currency.svg'),
                Text(
                  balance.toString(),
                  style: const TextStyle(
                      fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // primary wallet
                const Text(
                  'Primary Wallet',
                  style: TextStyle(fontSize: 15),
                ),
                // add money button
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    color: kPrimarycolor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    '+ Add Money',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
