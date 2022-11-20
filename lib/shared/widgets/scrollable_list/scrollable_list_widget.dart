import 'package:flutter/material.dart';
import 'package:mono/shared/widgets/transaction_tile/transaction_tile_widget.dart';

class ScrollableListWidget extends StatelessWidget {
  final List listItems;
  const ScrollableListWidget({
    super.key,
    required this.listItems,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            children: listItems
                .map(
                  (transaction) => TransactionTile(transaction: transaction),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
