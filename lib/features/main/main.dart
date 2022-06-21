import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:playground_flutter/data/remote/beers/beer.dart';
import 'package:playground_flutter/data/remote/result.dart';
import 'package:playground_flutter/features/main/main_view_model.dart';
import 'package:playground_flutter/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends HookConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainViewModel = ref.read(mainViewModelProvider);
    final Result<List<Beer>>? beers =
        ref.watch(mainViewModelProvider.select((value) => value.beers));

    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.black87,
      primary: Colors.grey[300],
      minimumSize: const Size(88, 36),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Beers"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Beer name:',
            ),
            Container(
              child: beers == null
                  ? const SizedBox()
                  : beers.when(success: (data) {
                      return Text(data.first.name);
                    }, failure: (e) {
                      return Text(e.message);
                    }),
            ),
            ElevatedButton(
              onPressed: () async => mainViewModel.fetchBeers(),
              child: const Text("show beer name"),
              style: raisedButtonStyle,
            )
          ],
        ),
      ),
    );
  }
}
