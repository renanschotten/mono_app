import 'package:flutter/material.dart';
import 'package:mono/core/enums/transaction_type.dart';
import 'package:mono/core/models/transaction.dart';
import 'package:mono/shared/colors/app_colors.dart';
import 'package:mono/shared/shadows/app_shadows.dart';
import 'package:mono/shared/sizes/app_radius.dart';
import 'package:mono/shared/widgets/background_body/background_body_widget.dart';
import 'package:mono/shared/widgets/labels/label.dart';
import 'package:mono/shared/widgets/transaction_tile/transaction_tile_widget.dart';

class TransactionPage extends StatelessWidget {
  TransactionPage({super.key});

  final List<TransactionModel> transactions = [
    TransactionModel(
      name: 'Upwork',
      amount: 85000,
      date: DateTime.now(),
      type: TransactionType.income,
    ),
    TransactionModel(
      name: 'Transfer',
      amount: 8500,
      date: DateTime.utc(2022, 11, 19),
      type: TransactionType.expanse,
    ),
    TransactionModel(
      name: 'Paypal',
      amount: 140600,
      date: DateTime.utc(2022, 11, 07),
      type: TransactionType.income,
    ),
    TransactionModel(
      name: 'Youtube',
      amount: 1199,
      date: DateTime.utc(2022, 10, 02),
      type: TransactionType.expanse,
    ),
    TransactionModel(
      name: 'Upwork',
      amount: 85000,
      date: DateTime.now(),
      type: TransactionType.income,
    ),
    TransactionModel(
      name: 'Transfer',
      amount: 8500,
      date: DateTime.utc(2022, 11, 19),
      type: TransactionType.expanse,
    ),
    TransactionModel(
      name: 'Paypal',
      amount: 140600,
      date: DateTime.utc(2022, 11, 07),
      type: TransactionType.income,
    ),
    TransactionModel(
      name: 'Youtube',
      amount: 1199,
      date: DateTime.utc(2022, 10, 02),
      type: TransactionType.expanse,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 320,
                  child: CustomPaint(
                    painter: BackgroundBodyWidget(),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 16,
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Label.s16MediumWhite(text: 'Hello,'),
                        Label.s20SemiBoldWhite(text: 'User'),
                      ],
                    ),
                  ),
                ),
                const Image(
                  image: AssetImage('./assets/images/background_image.png'),
                ),
                Positioned.fill(
                  top: MediaQuery.of(context).size.height * 0.2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        boxShadow: [AppShadows.shadow3],
                        color: AppColors.green1,
                        borderRadius: BorderRadius.all(AppRadius.circular20),
                      ),
                      width: MediaQuery.of(context).size.width - 40,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 24.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Label.s16SemiBoldWhite(text: 'Total balance'),
                                const SizedBox(height: 8.0),
                                FittedBox(
                                  child: Label.s30BoldWhite(
                                    text: '\$2,548.00',
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Label.s16MediumWhite(text: 'Income'),
                                      FittedBox(
                                        child: Label.s20SemiBoldWhite(
                                          text: '\$1,840.00',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 8.0),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Label.s16MediumWhite(text: 'Expenses'),
                                      FittedBox(
                                        child: Label.s20SemiBoldWhite(
                                          text: '\$284.00',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(right: 22, left: 22, bottom: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Label.s18SemiBoldBlack1(text: 'Transactions history'),
                    Label.s14RegularGray1(text: 'See all'),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  children: transactions
                      .map((e) => TransactionTile(transaction: e))
                      .toList(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
