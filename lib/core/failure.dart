abstract class Failure {
  String message;
  Failure({required this.message});
}

class NetworkFailure implements Failure {
  @override
  String message;

  NetworkFailure({required this.message});
}
