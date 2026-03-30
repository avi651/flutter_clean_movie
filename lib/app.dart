import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_clean/core/module/app_module.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ModularApp(
      module: AppModule(),
      child: MaterialApp.router(
        routerConfig: Modular.routerConfig, // ✅ FIXED
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
