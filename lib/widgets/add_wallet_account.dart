import 'package:flutter/material.dart';

import '../Const/constants.dart';
import 'my_accounts_card.dart';

class AddWalletAccountScreen extends StatefulWidget {
  const AddWalletAccountScreen({Key? key}) : super(key: key);

  @override
  State<AddWalletAccountScreen> createState() => _AddWalletAccountScreenState();
}

class _AddWalletAccountScreenState extends State<AddWalletAccountScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int index = 0;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      index = _tabController.index;
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SizedBox(
          width: size.width,
          height: 60,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kPrimarycolor),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            onPressed: () {},
            child: Text(
              index == 0 ? 'Add Linked Account' : 'Add New Wallet',
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          // give the tab bar a height
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            height: 46,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(
                12.0,
              ),
            ),
            child: TabBar(
              controller: _tabController,
              // give the indicator a decoration (color and border radius)
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  12.0,
                ),
                color: Colors.white,
              ),
              labelStyle: kTextLabelStyle,
              unselectedLabelStyle: kTextLabelStyle,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              tabs: const [
                // first tab
                Tab(
                  text: 'Linked Accounts',
                ),

                // second tab
                Tab(
                  text: 'My def Wallet',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),

          // tab bar view here
          SizedBox(
            height: size.height * 0.23,
            child: TabBarView(
              controller: _tabController,
              children: [
                // first tab bar view widget
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26.0),
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: const EdgeInsets.only(left: 15),
                        leading: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: const Text(
                            'AA',
                            style: kPrimaryTextStyle,
                          ),
                        ),
                        title: const Text('Abora Akinyemi',
                            style: kTextLabelStyle),
                        subtitle: const Text('2280314579'),
                        trailing: const Icon(
                          Icons.delete_outline_rounded,
                          color: kPrimarycolor,
                          size: 30,
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.only(left: 15),
                        leading: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: const Text(
                            'AA',
                            style: kPrimaryTextStyle,
                          ),
                        ),
                        title: const Text('Abora Akinyemi',
                            style: kTextLabelStyle),
                        subtitle: const Text('19070314579'),
                        trailing: const Icon(
                          Icons.delete_outline_rounded,
                          color: kPrimarycolor,
                          size: 30,
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ],
                  ),
                ),
                // second tab bar view widget
                MyAccountsCard(size: size),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
