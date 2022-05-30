import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:playground_flutter/data/remote/app_dio.dart';
import 'package:playground_flutter/data/remote/beers/beer.dart';
import 'package:retrofit/retrofit.dart';

part 'beers_data_source.g.dart';

final beersDataSourceProvider = Provider((ref) => BeersDataSource(ref.read));

@RestApi()
abstract class BeersDataSource {
  factory BeersDataSource(Reader reader) =>
      _BeersDataSource(reader(dioProvider));

  @GET('beers/1')
  Future<List<Beer>> getBeers();
}
