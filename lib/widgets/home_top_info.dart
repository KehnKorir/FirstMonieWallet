import 'package:cevawallet/widgets/add_wallet_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Const/constants.dart';

class HomeTopInfo extends StatelessWidget {
  const HomeTopInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AddWalletAccountScreen()),
              );
            },
            child: CircleAvatar(
              radius: 30.0,
              child: SvgPicture.asset('assets/Account.svg'),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Row(
            children: const [
              Text("Yatin",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: kSecondarycolor,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
