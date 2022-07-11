import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:playground_flutter/data/remote/beers/beer.dart';
import 'package:playground_flutter/data/remote/beers/beers_data_source.dart';
import 'package:playground_flutter/data/remote/result.dart';

final mainViewModelProvider =
    ChangeNotifierProvider((ref) => MainViewModel(ref.read));

class MainViewModel extends ChangeNotifier {
  MainViewModel(this._reader);

  final Reader _reader;

  late final BeersDataSource _dataSource = _reader(beersDataSourceProvider);

  Result<List<Beer>>? _beers;

  Result<List<Beer>>? get beers => _beers;

  Future<void> fetchBeers() {
    return Result.guardFuture(() async => await _dataSource.getBeers())
        .then((value) => _beers = value)
        .whenComplete(notifyListeners);
  }
}
