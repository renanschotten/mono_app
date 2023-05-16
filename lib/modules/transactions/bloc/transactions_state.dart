part of 'transactions_bloc.dart';

@immutable
abstract class TransactionsState {}

class TransactionsInitial extends TransactionsState {}

class TransactionsLoading extends TransactionsState {}

class TransactionsSuccess extends TransactionsState {}

class TransactionsFailure extends TransactionsState {}
