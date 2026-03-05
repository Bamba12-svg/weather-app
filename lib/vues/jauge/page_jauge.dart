import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:application_meteo_flutter/coeur/constantes/couleurs_app.dart';
import 'package:application_meteo_flutter/fournisseurs/fournisseurs_meteo.dart';
import 'package:application_meteo_flutter/modeles/meteo/donnees_meteo_ville.dart';
import 'package:application_meteo_flutter/vues/jauge/widget_jauge.dart';

class PageJauge extends ConsumerStatefulWidget {
  const PageJauge({super.key});

  @override
  ConsumerState<PageJauge> createState() => _EtatPageJauge();
}

class _EtatPageJauge extends ConsumerState<PageJauge>
    with SingleTickerProviderStateMixin {
  late AnimationController _ctrlJauge;
  late Animation<double> _animJauge;

  @override
  void initState() {
    super.initState();
    _ctrlJauge = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _animJauge = CurvedAnimation(parent: _ctrlJauge, curve: Curves.easeOut);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(fournisseurMeteoVilles.notifier).chargerVilles();
    });
  }

  @override
  void dispose() {
    _ctrlJauge.dispose();
    super.dispose();
  }

  void _recommencer() {
    ref.read(fournisseurMeteoVilles.notifier).reinitialiser();
    Future.delayed(const Duration(milliseconds: 100), () {
      ref.read(fournisseurMeteoVilles.notifier).chargerVilles();
    });
  }

  @override
  Widget build(BuildContext context) {
    final etat = ref.watch(fournisseurMeteoVilles);
    final estSombre = ref.watch(fournisseurModeTheme);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    _ctrlJauge.animateTo(etat.progression);

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
              
              if (etat.erreur != null && !etat.termine)
                _VueErreur(erreur: etat.erreur!, onReessayer: _recommencer)
              else if (!etat.termine)
                _VueChargement(
                  animJauge: _animJauge,
                  messageIndex: etat.indexMessage,
                  villesChargees: etat.villesChargees.length,
                )
              else
                _VueResultats(
                  villes: etat.villesChargees,
                  onRecommencer: _recommencer,
                ),

              Positioned(
                top: 8,
                left: 8,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new,
                      color: Colors.white),
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

class _VueChargement extends StatelessWidget {
  const _VueChargement({
    required this.animJauge,
    required this.messageIndex,
    required this.villesChargees,
  });

  final Animation<double> animJauge;
  final int messageIndex;
  final int villesChargees;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '🌦️ Météo Sénégal',
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 48),

          AnimatedBuilder(
            animation: animJauge,
            builder: (context, child) => WidgetJauge(
              progression: animJauge.value,
              taille: 220,
            ),
          ),
          const SizedBox(height: 36),

          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: Padding(
              key: ValueKey(messageIndex),
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                messagesAttente[messageIndex],
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 16),

          Text(
            '$villesChargees / 5 villes chargées',
            style: const TextStyle(color: Colors.white54, fontSize: 13),
          ),
        ],
      ),
    );
  }
}

class _VueResultats extends StatelessWidget {
  const _VueResultats({
    required this.villes,
    required this.onRecommencer,
  });

  final List<DonneesMeteoVille> villes;
  final VoidCallback onRecommencer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 60),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '🇸🇳 Résultats',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              
              GestureDetector(
                onTap: onRecommencer,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: CouleursApp.couleurAccent,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: CouleursApp.couleurAccent.withValues(alpha: 0.4),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.replay, color: Colors.white, size: 16),
                      SizedBox(width: 6),
                      Text(
                        'Recommencer',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),

        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            itemCount: villes.length,
            itemBuilder: (context, i) => _CarteVille(
              donneesVille: villes[i],
              index: i,
            ),
          ),
        ),
      ],
    );
  }
}

class _CarteVille extends StatelessWidget {
  const _CarteVille({required this.donneesVille, required this.index});

  final DonneesMeteoVille donneesVille;
  final int index;

  @override
  Widget build(BuildContext context) {
    final d = donneesVille.donnees;
    final v = donneesVille.ville;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: Duration(milliseconds: 400 + index * 100),
      curve: Curves.easeOutCubic,
      builder: (_, val, child) => Transform.translate(
        offset: Offset(0, 30 * (1 - val)),
        child: Opacity(opacity: val, child: child),
      ),
      child: GestureDetector(
        onTap: () => Navigator.of(context).pushNamed(
          '/detail',
          arguments: donneesVille,
        ),
        child: Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: isDark
                ? Colors.white.withValues(alpha: 0.1)
                : Colors.white.withValues(alpha: 0.15),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.2),
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              
              Text(v.emoji, style: const TextStyle(fontSize: 32)),
              const SizedBox(width: 12),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      v.nom,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      d.description,
                      style: const TextStyle(
                          color: Colors.white70, fontSize: 13),
                    ),
                  ],
                ),
              ),

              CachedNetworkImage(
                imageUrl: d.urlIcone,
                width: 48,
                height: 48,
                errorWidget: (context, url, error) =>
                    const Icon(Icons.cloud, color: Colors.white, size: 40),
              ),

              const SizedBox(width: 8),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '${d.temperature.celsius.toInt()}°',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'H:${d.tempMax.celsius.toInt()}° B:${d.tempMin.celsius.toInt()}°',
                    style: const TextStyle(
                        color: Colors.white60, fontSize: 11),
                  ),
                ],
              ),

              const SizedBox(width: 4),
              const Icon(Icons.chevron_right, color: Colors.white54),
            ],
          ),
        ),
      ),
    );
  }
}

class _VueErreur extends StatelessWidget {
  const _VueErreur({required this.erreur, required this.onReessayer});
  final String erreur;
  final VoidCallback onReessayer;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('❌', style: TextStyle(fontSize: 64)),
            const SizedBox(height: 16),
            Text(
              'Une erreur est survenue',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              erreur,
              style: const TextStyle(color: Colors.white54, fontSize: 13),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: onReessayer,
              icon: const Icon(Icons.refresh),
              label: const Text('Réessayer'),
              style: ElevatedButton.styleFrom(
                backgroundColor: CouleursApp.couleurAccent,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                    horizontal: 32, vertical: 14),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}