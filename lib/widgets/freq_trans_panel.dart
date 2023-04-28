import 'package:cevawallet/Const/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../data/frequent_trans_data.dart';

class FrequentTransactions extends StatelessWidget {
  const FrequentTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 3,
            width: 114,
            decoration: BoxDecoration(
              color: kContainerBarColor,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/frquently.svg'),
              const SizedBox(
                width: 17,
              ),
              const Text(
                'Frequent Transactions',
                style: kTextLabelStyle,
              ),
            ],
          ),
          const SizedBox(
            height: 27,
          ),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              isDense: true,
              prefixIcon: const Icon(
                Icons.search_rounded,
                size: 25,
              ),
              suffixIcon: const Icon(
                Icons.close_rounded,
                size: 25,
              ),
              hintText: 'Search',
              hintStyle: kTextLabelStyle.copyWith(color: Colors.grey),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.only(top: 0),
                itemCount: transactionsList.length,
                itemBuilder: (context, index) {
                  final _transaction = transactionsList[index];
                  final isLastItem = index == transactionsList.length - 1;
                  return Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: _transaction.label == 'DSTV'
                              ? Image.asset(
                                  _transaction.icon,
                                )
                              : SvgPicture.asset(
                                  _transaction.icon,
                                  fit: BoxFit.none,
                                ),
                        ),
                        title: Text(
                          _transaction.label,
                          style: kTextLabelStyle,
                        ),
                      ),
                      if (isLastItem)
                        const SizedBox.shrink()
                      else
                        const Divider(),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
