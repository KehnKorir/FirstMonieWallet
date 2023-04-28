import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Const/constants.dart';
import '../data/home_category_option_data.dart';

class TransfersList extends StatelessWidget {
  const TransfersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: transfersList.length,
        itemBuilder: (context, index) {
          final transfer = transfersList[index];
          return Column(
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
                    transfer.icon,
                    fit: BoxFit.none,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                transfer.label,
                style: kTextLabelStyle,
              ),
            ],
          );
        });
  }
}
