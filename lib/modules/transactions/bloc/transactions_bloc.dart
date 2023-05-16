import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'transactions_event.dart';
part 'transactions_state.dart';

class TransactionsBloc extends Bloc<TransactionsEvent, TransactionsState> {
  final FetchTransactions
  TransactionsBloc() : super(TransactionsInitial()) {
    on<FetchTransactionsEvent>((event, emit) {

    });
  }
}
