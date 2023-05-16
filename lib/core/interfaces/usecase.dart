abstract class UseCase<T, Params> {
  T call(Params params);
}

abstract class Params {}

abstract class NoParams extends Params {}
