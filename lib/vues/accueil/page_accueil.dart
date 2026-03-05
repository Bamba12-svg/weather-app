import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:application_meteo_flutter/coeur/constantes/couleurs_app.dart';
import 'package:application_meteo_flutter/fournisseurs/fournisseurs_meteo.dart';

class PageAccueil extends ConsumerStatefulWidget {
  const PageAccueil({super.key});

  @override
  ConsumerState<PageAccueil> createState() => _EtatPageAccueil();
}

class _EtatPageAccueil extends ConsumerState<PageAccueil>
    with SingleTickerProviderStateMixin {
  late AnimationController _ctrl;
  late Animation<double> _fadeAnim;
  late Animation<Offset> _slideAnim;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));
    _fadeAnim = CurvedAnimation(parent: _ctrl, curve: Curves.easeIn);
    _slideAnim = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeOutCubic));
    _ctrl.forward();
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final estSombre = ref.watch(fournisseurModeTheme);
    final isDark = Theme.of(context).brightness == Brightness.dark;

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
              
              Positioned(
                top: 16,
                right: 16,
                child: _BoutonTheme(
                  estSombre: estSombre,
                  onToggle: () => ref
                      .read(fournisseurModeTheme.notifier)
                      .state = !estSombre,
                ),
              ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: FadeTransition(
                    opacity: _fadeAnim,
                    child: SlideTransition(
                      position: _slideAnim,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          
                          const _IconeMeteoAnimee(),
                          const SizedBox(height: 32),

                          Text(
                            '🌤️ Météo Sénégal',
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 16),

                          Text(
                            'Découvrez la météo en temps réel\ndes plus grandes villes du Sénégal',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                  color: Colors.white70,
                                  height: 1.6,
                                ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 48),

                          _BoutonLancement(
                            onTap: () => Navigator.of(context)
                                .pushNamed('/jauge'),
                          ),
                          const SizedBox(height: 24),

                          Text(
                            'Dakar • Saint-Louis • Ziguinchor\nKaolack • Tambacounda',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: Colors.white54),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
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

class _IconeMeteoAnimee extends StatefulWidget {
  const _IconeMeteoAnimee();

  @override
  State<_IconeMeteoAnimee> createState() => _EtatIconeMeteoAnimee();
}

class _EtatIconeMeteoAnimee extends State<_IconeMeteoAnimee>
    with SingleTickerProviderStateMixin {
  late AnimationController _ctrl;
  late Animation<double> _flottement;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
    _flottement = Tween<double>(begin: -10, end: 10).animate(
      CurvedAnimation(parent: _ctrl, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _flottement,
      builder: (context, child) => Transform.translate(
        offset: Offset(0, _flottement.value),
        child: Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.15),
            shape: BoxShape.circle,
          ),
          child: const Center(
            child: Text('🌍', style: TextStyle(fontSize: 64)),
          ),
        ),
      ),
    );
  }
}

class _BoutonLancement extends StatefulWidget {
  const _BoutonLancement({required this.onTap});
  final VoidCallback onTap;

  @override
  State<_BoutonLancement> createState() => _EtatBoutonLancement();
}

class _EtatBoutonLancement extends State<_BoutonLancement>
    with SingleTickerProviderStateMixin {
  late AnimationController _ctrl;
  late Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 150));
    _scale = Tween<double>(begin: 1.0, end: 0.95).animate(
      CurvedAnimation(parent: _ctrl, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _ctrl.forward(),
      onTapUp: (_) {
        _ctrl.reverse();
        widget.onTap();
      },
      onTapCancel: () => _ctrl.reverse(),
      child: ScaleTransition(
        scale: _scale,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
          decoration: BoxDecoration(
            color: CouleursApp.couleurAccent,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: CouleursApp.couleurAccent.withValues(alpha: 0.4),
                blurRadius: 20,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('🚀', style: TextStyle(fontSize: 20)),
              SizedBox(width: 10),
              Text(
                'Lancer l\'expérience',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BoutonTheme extends StatelessWidget {
  const _BoutonTheme({required this.estSombre, required this.onToggle});
  final bool estSombre;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onToggle,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.2),
          shape: BoxShape.circle,
        ),
        child: Text(
          estSombre ? '☀️' : '🌙',
          style: const TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}