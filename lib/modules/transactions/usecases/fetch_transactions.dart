import 'package:mono/core/interfaces/usecase.dart';
import 'package:mono/core/models/transaction.dart';

class FetchTransactions implements UseCase<List<TransactionModel>, NoParams> {
  @override
  List<TransactionModel> call([NoParams? params]) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
