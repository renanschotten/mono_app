import 'package:dartz/dartz.dart';
import 'package:mono/core/failure.dart';
import 'package:mono/core/models/transaction.dart';

abstract class TransactionsDatasource {
  Future<Either<Failure, List<TransactionModel>>> fetchTransactions();
}
