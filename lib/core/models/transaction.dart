import 'package:mono/core/enums/transaction_type.dart';
import 'package:mono/shared/extensions/date_extensions.dart';

class TransactionModel {
  final String name;
  final int amount;
  final DateTime date;
  final TransactionType type;

  TransactionModel({
    required this.name,
    required this.amount,
    required this.date,
    required this.type,
  });

  String checkTransactionDate() {
    if (isToday) return 'Today';
    if (isYesterday) return 'Yesterday';
    return date.yMMMd();
  }

  bool get isYesterday => DateTime.now().day - date.day == 1;

  bool get isToday => date.day == DateTime.now().day;
}
