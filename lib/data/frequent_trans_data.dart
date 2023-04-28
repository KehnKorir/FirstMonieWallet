import 'dart:core' show List;

import 'package:cevawallet/models/home_category_option_model.dart';

final _firstMonieQr =
    HomeCategoryOptionModel(icon: 'assets/QR.svg', label: 'FirstMonie QR');

final _betting = HomeCategoryOptionModel(
  icon: 'assets/Betting.svg',
  label: 'Betting',
);

final _electricity = HomeCategoryOptionModel(
  icon: 'assets/Electricity.svg',
  label: 'Electricity',
);

final _data = HomeCategoryOptionModel(
  icon: 'assets/data.svg',
  label: 'Data',
);

final _dstv = HomeCategoryOptionModel(
  icon: 'assets/dstv.png',
  label: 'DSTV',
);

final List<HomeCategoryOptionModel> transactionsList = [
  _firstMonieQr,
  _betting,
  _electricity,
  _data,
  _dstv
];
