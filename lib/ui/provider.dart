import 'package:flutter/material.dart';
import 'package:it52_mobile/data/local/root_store.dart';
import 'package:it52_mobile/ui/app.dart';
import 'package:provider/provider.dart';

class ProviderWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      Provider<RootStore>(
        builder: (_) => RootStore(),
      )
    ], child: App());
  }
}
