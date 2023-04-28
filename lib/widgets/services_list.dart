import 'package:cevawallet/Const/constants.dart';
import 'package:cevawallet/data/home_category_option_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ServicesList extends StatelessWidget {
  const ServicesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: servicesList.length,
        itemBuilder: (context, index) {
          final service = servicesList[index];
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
                    service.icon,
                    fit: BoxFit.none,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                service.label,
                style: kTextLabelStyle,
              ),
            ],
          );
        });
  }
}
