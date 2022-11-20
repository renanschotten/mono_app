import 'package:flutter/material.dart';
import 'package:mono/core/enums/transaction_type.dart';
import 'package:mono/core/models/transaction.dart';
import 'package:mono/shared/colors/app_colors.dart';
import 'package:mono/shared/extensions/money_extensions.dart';
import 'package:mono/shared/widgets/labels/label.dart';

class TransactionTile extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionTile({
    super.key,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: AppColors.gray2,
        ),
        height: 50,
        width: 50,
      ),
      horizontalTitleGap: 10,
      title: Label.s16MediumBlack1(text: transaction.name),
      subtitle: Label.s13RegularGray1(text: transaction.checkTransactionDate()),
      trailing: transaction.type == TransactionType.income
          ? Label.s18SemiBoldGreen5(text: transaction.amount.dollar())
          : Label.s18SemiBoldRed1(text: transaction.amount.dollar()),
    );
  }
}
