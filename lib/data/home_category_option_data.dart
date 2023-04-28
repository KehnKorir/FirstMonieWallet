import 'dart:core' show List;

import 'package:cevawallet/models/home_category_option_model.dart';

final _txnHistory = HomeCategoryOptionModel(
  icon: 'assets/Txn-History.svg',
  label: 'Txn History',
);

final _statements = HomeCategoryOptionModel(
  icon: 'assets/statement.svg',
  label: 'Statements',
);

final _eReceipt = HomeCategoryOptionModel(
  icon: 'assets/receipt.svg',
  label: 'E-Receipts',
);

final List<HomeCategoryOptionModel> accountsList = [
  _txnHistory,
  _statements,
  _eReceipt,
];

final _firstBank =
    HomeCategoryOptionModel(icon: 'assets/FirstBank.svg', label: 'FirstBank');

final _firstMonie = HomeCategoryOptionModel(
  icon: 'assets/fbn-account.svg',
  label: 'FirstMonie',
);

final _otherBank =
    HomeCategoryOptionModel(icon: 'assets/Other Bank.svg', label: 'Other Bank');

final _firstMonieQR =
    HomeCategoryOptionModel(icon: 'assets/QR.svg', label: 'FirstMonie QR');

final _transactEarn =
    HomeCategoryOptionModel(icon: 'assets/cash.svg', label: 'Transact & Earn');

final List<HomeCategoryOptionModel> transfersList = [
  _firstBank,
  _firstMonie,
  _otherBank,
  _firstMonieQR,
  _transactEarn,
];

final _atm = HomeCategoryOptionModel(icon: 'assets/ATM.svg', label: 'ATM');
final _agent =
    HomeCategoryOptionModel(icon: 'assets/agent.svg', label: 'Agent');
final List<HomeCategoryOptionModel> withdrawList = [
  _atm,
  _agent,
];

final _electricity = HomeCategoryOptionModel(
  icon: 'assets/Electricity.svg',
  label: 'Electricity',
);
final _airtime = HomeCategoryOptionModel(
  icon: 'assets/Airtime.svg',
  label: 'Airtime',
);
final _data = HomeCategoryOptionModel(
  icon: 'assets/data.svg',
  label: 'Data',
);
final _betting = HomeCategoryOptionModel(
  icon: 'assets/Betting.svg',
  label: 'Betting',
);
final _dstv = HomeCategoryOptionModel(
  icon: 'assets/dstv.png',
  label: 'DSTV',
);

final _otherBillers = HomeCategoryOptionModel(
  icon: 'assets/biller.svg',
  label: 'Other Billers',
);
final List<HomeCategoryOptionModel> paymentsList = [
  _electricity,
  _airtime,
  _data,
  _betting,
  _otherBillers,
];

final _virtualCards = HomeCategoryOptionModel(
  icon: 'assets/Virtual Cards.svg',
  label: 'Virtual Cards',
);
final _debitInstructions = HomeCategoryOptionModel(
  icon: 'assets/debit_instructions.svg',
  label: 'Debit Instructions',
);
final _walletUpgrade = HomeCategoryOptionModel(
  icon: 'assets/wallet.svg',
  label: 'Wallet Upgrade',
);
final _inviteFriend = HomeCategoryOptionModel(
  icon: 'assets/invite-friend.svg',
  label: 'Invite Friend',
);
final _agentLocator =
    HomeCategoryOptionModel(icon: 'assets/locator.svg', label: 'Agent Locator');
final _complains = HomeCategoryOptionModel(
  icon: 'assets/complaints.svg',
  label: 'Complains',
);
final List<HomeCategoryOptionModel> servicesList = [
  _virtualCards,
  _debitInstructions,
  _walletUpgrade,
  _inviteFriend,
  _agentLocator,
  _complains,
];
