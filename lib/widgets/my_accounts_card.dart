import 'package:flutter/material.dart';

import '../utilities/my_account.dart';

class MyAccountsCard extends StatelessWidget {
  const MyAccountsCard({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.23,
      child: ListView(
        padding: const EdgeInsets.only(left: 13),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: const [
          MyAccounts(
            balance: 250.99,
            addMoney: 12345678,
            cardColor: Colors.white12,
          ),
          MyAccounts(
            balance: 300.99,
            addMoney: 12345678,
            cardColor: Colors.deepPurple,
          ),
          MyAccounts(
            balance: 2450.99,
            addMoney: 12345678,
            cardColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}
