import 'dart:convert';

import 'package:mono/core/enums/transaction_type.dart';
import 'package:mono/core/models/transaction.dart';
import 'package:mono/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:mono/modules/transactions/datasources/transactions_datasource.dart';

class TransactionsLocalDatasource implements TransactionsDatasource {
  @override
  Future<Either<Failure, List<TransactionModel>>> fetchTransactions() async {
    return Right(
      [
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
      ],
    );
    /* await Future.delayed(const Duration(seconds: 2));
    try {
      final response = jsonMock;
      final result = json.decode(response);
      if (result['status'] == 200){

      }

    } catch (e) {
      return Left(NetworkFailure(message: e.toString()));
    } */
  }
}

final jsonMock = json.encode(mock);

final mock = {
  'status': 200,
  'body': [
    {
      'name': 'Upwork',
      'amount': 85000,
      'date': '	2022-12-03',
      'type': 'income',
    },
    {
      'name': 'Transfer',
      'amount': 8500,
      'date': '	2022-11-19',
      'type': 'expanse',
    },
    {
      'name': 'Paypal',
      'amount': 140600,
      'date': '	2022-11-07',
      'type': 'income',
    },
    {
      'name': 'Youtube',
      'amount': 1199,
      'date': '	2022-10-02',
      'type': 'expanse',
    },
  ]
};
