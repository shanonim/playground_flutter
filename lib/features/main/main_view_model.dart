import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:playground_flutter/data/remote/beers/beer.dart';
import 'package:playground_flutter/data/remote/result.dart';
import 'package:playground_flutter/data/repository/beers_repository.dart';
import 'package:playground_flutter/data/repository/beers_repository_impl.dart';

final mainViewModelProvider =
    ChangeNotifierProvider((ref) => MainViewModel(ref.read));

class MainViewModel extends ChangeNotifier {
  MainViewModel(this._reader);

  final Reader _reader;

  late final BeersRepository _repository = _reader(beersRepositoryProvider);

  Result<List<Beer>>? _beers;

  Result<List<Beer>>? get beers => _beers;

  Future<void> fetchBeers() {
    return _repository
        .getBeers()
        .then((value) => _beers = value)
        .whenComplete(notifyListeners);
  }
}
