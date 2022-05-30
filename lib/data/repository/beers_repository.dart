import 'package:playground_flutter/data/remote/beers/beer.dart';
import 'package:playground_flutter/data/remote/result.dart';

abstract class BeersRepository {
  Future<Result<List<Beer>>> getBeers();
}
