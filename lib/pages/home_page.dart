import 'package:cevawallet/widgets/payments_list.dart';
import 'package:cevawallet/widgets/withdraw.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../Const/constants.dart';
import '../widgets/accounts_list.dart';
import '../widgets/freq_trans_panel.dart';
import '../widgets/home_top_info.dart';
import '../widgets/my_accounts_card.dart';
import '../widgets/services_list.dart';
import '../widgets/transfers_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SlidingUpPanel(
        color: kAppBackgroundColor,
        backdropEnabled: true,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        panel: const FrequentTransactions(),
        minHeight: 70,
        maxHeight: 564,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeTopInfo(),
                // app bar
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 13.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('MY ACCOUNTS', style: TextStyle(fontSize: 15)),
                      Text(
                        'View All',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),

                //cards
                MyAccountsCard(size: size),
                const SizedBox(
                  height: 27,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 43,
                    bottom: 26,
                  ),
                  child: Text(
                    'Accounts',
                    style: kPrimaryTextStyle,
                  ),
                ),
                const AccountsList(),
                const SizedBox(
                  height: 27,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 43,
                    bottom: 27,
                  ),
                  child: Text(
                    'Transfers',
                    style: kPrimaryTextStyle,
                  ),
                ),

                const TransfersList(),
                const SizedBox(
                  height: 27,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 43,
                    bottom: 27,
                  ),
                  child: Text(
                    'Withdraw',
                    style: kPrimaryTextStyle,
                  ),
                ),

                const WithdrawList(),
                const SizedBox(
                  height: 27,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 43,
                    bottom: 27,
                  ),
                  child: Text(
                    'Payments',
                    style: kPrimaryTextStyle,
                  ),
                ),
                const PaymentsList(),
                const SizedBox(
                  height: 27,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 43,
                    bottom: 27,
                  ),
                  child: Text(
                    'Services',
                    style: kPrimaryTextStyle,
                  ),
                ),
                const ServicesList(),
                const SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
