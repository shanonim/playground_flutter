import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:playground_flutter/data/remote/beers/beer.dart';
import 'package:playground_flutter/data/remote/beers/beers_data_source.dart';
import 'package:playground_flutter/data/remote/result.dart';
import 'package:playground_flutter/data/repository/beers_repository.dart';

final beersRepositoryProvider =
    Provider((ref) => BeersRepositoryImpl(ref.read));

class BeersRepositoryImpl implements BeersRepository {
  BeersRepositoryImpl(this._reader);

  final Reader _reader;

  late final BeersDataSource _dataSource = _reader(beersDataSourceProvider);

  @override
  Future<Result<List<Beer>>> getBeers() {
    return Result.guardFuture(() async => await _dataSource.getBeers());
  }
}
