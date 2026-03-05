import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:application_meteo_flutter/coeur/constantes/couleurs_app.dart';
import 'package:application_meteo_flutter/fournisseurs/fournisseurs_meteo.dart';
import 'package:application_meteo_flutter/modeles/meteo/donnees_meteo_ville.dart';

class PageDetailVille extends ConsumerWidget {
  const PageDetailVille({super.key});

  Future<void> _ouvrirCarte(BuildContext context, String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Impossible d\'ouvrir Google Maps'),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final donneesVille =
        ModalRoute.of(context)?.settings.arguments as DonneesMeteoVille?;

    if (donneesVille == null) {
      return const Scaffold(body: Center(child: Text('Données manquantes')));
    }

    final d = donneesVille.donnees;
    final v = donneesVille.ville;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final estSombre = ref.watch(fournisseurModeTheme);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: isDark
                ? [const Color(0xFF0D1B2A), const Color(0xFF1A3A5C)]
                : CouleursApp.degradePluie,
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              
              SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(24, 64, 24, 24),
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    Text(v.emoji, style: const TextStyle(fontSize: 72)),
                    const SizedBox(height: 8),
                    Text(
                      v.nom,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Sénégal',
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.6),
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 32),
                    _CarteInfo(
                      enfant: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CachedNetworkImage(
                                imageUrl: d.urlIcone,
                                width: 80,
                                height: 80,
                                errorWidget: (context, url, error) => const Icon(
                                    Icons.cloud,
                                    color: Colors.white,
                                    size: 60),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '${d.temperature.celsius.toInt()}°C',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 64,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            d.description,
                            style: const TextStyle(
                                color: Colors.white70, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: _TuileInfo(
                            icone: '🌡️',
                            label: 'Max',
                            valeur: '${d.tempMax.celsius.toInt()}°C',
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _TuileInfo(
                            icone: '❄️',
                            label: 'Min',
                            valeur: '${d.tempMin.celsius.toInt()}°C',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: _TuileInfo(
                            icone: '📍',
                            label: 'Latitude',
                            valeur: '${v.lat.toStringAsFixed(4)}°',
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _TuileInfo(
                            icone: '📍',
                            label: 'Longitude',
                            valeur: '${v.lon.toStringAsFixed(4)}°',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    GestureDetector(
                      onTap: () => _ouvrirCarte(context, v.urlGoogleMaps),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        decoration: BoxDecoration(
                          color: CouleursApp.couleurAccent,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: CouleursApp.couleurAccent
                                  .withValues(alpha: 0.4),
                              blurRadius: 20,
                              offset: const Offset(0, 8),
                            ),
                          ],
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('🗺️', style: TextStyle(fontSize: 24)),
                            SizedBox(width: 12),
                            Text(
                              'Voir sur Google Maps',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                top: 8,
                left: 8,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),

              Positioned(
                top: 8,
                right: 8,
                child: GestureDetector(
                  onTap: () => ref.read(fournisseurModeTheme.notifier).state =
                      !estSombre,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.2),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      estSombre ? '☀️' : '🌙',
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CarteInfo extends StatelessWidget {
  const _CarteInfo({required this.enfant});
  final Widget enfant;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
      ),
      child: enfant,
    );
  }
}

class _TuileInfo extends StatelessWidget {
  const _TuileInfo({
    required this.icone,
    required this.label,
    required this.valeur,
  });

  final String icone;
  final String label;
  final String valeur;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
      ),
      child: Column(
        children: [
          Text(icone, style: const TextStyle(fontSize: 24)),
          const SizedBox(height: 4),
          Text(
            valeur,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            label,
            style: const TextStyle(color: Colors.white54, fontSize: 12),
          ),
        ],
      ),
    );
  }
}