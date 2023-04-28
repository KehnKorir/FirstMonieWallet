import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Const/constants.dart';
import '../data/home_category_option_data.dart';

class AccountsList extends StatelessWidget {
  const AccountsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        for (final account in accountsList)
          Column(
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
                    account.icon,
                    fit: BoxFit.none,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                account.label,
                style: kTextLabelStyle,
              )
            ],
          ),
      ],
    );
  }
}
