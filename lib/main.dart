import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:application_meteo_flutter/coeur/theme/theme_app.dart';
import 'package:application_meteo_flutter/fournisseurs/fournisseurs_meteo.dart';
import 'package:application_meteo_flutter/vues/accueil/page_accueil.dart';
import 'package:application_meteo_flutter/vues/jauge/page_jauge.dart';
import 'package:application_meteo_flutter/vues/detail/page_detail_ville.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('fr_FR', null);
  runApp(const ProviderScope(child: MonApp()));
}

class MonApp extends ConsumerWidget {
  const MonApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final estSombre = ref.watch(fournisseurModeTheme);

    return MaterialApp(
      title: 'Météo Sénégal',
      debugShowCheckedModeBanner: false,
      theme: ThemeApp.clair,
      darkTheme: ThemeApp.sombre,
      themeMode: estSombre ? ThemeMode.dark : ThemeMode.light,
      initialRoute: '/',
      routes: {
        '/': (context) => const PageAccueil(),
        '/jauge': (context) => const PageJauge(),
        '/detail': (context) => const PageDetailVille(),
      },
    );
  }
}