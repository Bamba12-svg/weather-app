import 'dart:math';
import 'package:flutter/material.dart';
import 'package:application_meteo_flutter/coeur/constantes/couleurs_app.dart';

class WidgetJauge extends StatelessWidget {
  const WidgetJauge({
    super.key,
    required this.progression,
    required this.taille,
  });

  final double progression; 
  final double taille;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return SizedBox(
      width: taille,
      height: taille,
      child: CustomPaint(
        painter: _PeintreJauge(
          progression: progression,
          couleurFond: isDark
              ? Colors.white.withValues(alpha: 0.1)
              : Colors.black.withValues(alpha: 0.08),
          couleurPrincipale: CouleursApp.couleurAccent,
          couleurSecondaire: CouleursApp.bleuPluieClair,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${(progression * 100).toInt()}%',
                style: TextStyle(
                  color: isDark ? Colors.white : CouleursApp.bleuPluieFonce,
                  fontSize: taille * 0.18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Chargement',
                style: TextStyle(
                  color: isDark ? Colors.white54 : Colors.black45,
                  fontSize: taille * 0.07,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PeintreJauge extends CustomPainter {
  const _PeintreJauge({
    required this.progression,
    required this.couleurFond,
    required this.couleurPrincipale,
    required this.couleurSecondaire,
  });

  final double progression;
  final Color couleurFond;
  final Color couleurPrincipale;
  final Color couleurSecondaire;

  @override
  void paint(Canvas canvas, Size size) {
    final centre = Offset(size.width / 2, size.height / 2);
    final rayon = min(size.width, size.height) / 2 - 12;
    const epaisseur = 14.0;

    final pinceauFond = Paint()
      ..color = couleurFond
      ..style = PaintingStyle.stroke
      ..strokeWidth = epaisseur
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(centre, rayon, pinceauFond);

    if (progression > 0) {
      final pinceauProg = Paint()
        ..shader = SweepGradient(
          startAngle: -pi / 2,
          endAngle: -pi / 2 + 2 * pi * progression,
          colors: [couleurSecondaire, couleurPrincipale],
          tileMode: TileMode.clamp,
        ).createShader(Rect.fromCircle(center: centre, radius: rayon))
        ..style = PaintingStyle.stroke
        ..strokeWidth = epaisseur
        ..strokeCap = StrokeCap.round;

      canvas.drawArc(
        Rect.fromCircle(center: centre, radius: rayon),
        -pi / 2,
        2 * pi * progression,
        false,
        pinceauProg,
      );

      if (progression < 1.0) {
        final angle = -pi / 2 + 2 * pi * progression;
        final ptx = centre.dx + rayon * cos(angle);
        final pty = centre.dy + rayon * sin(angle);
        final pinceauPoint = Paint()
          ..color = Colors.white
          ..style = PaintingStyle.fill;
        canvas.drawCircle(Offset(ptx, pty), epaisseur / 2, pinceauPoint);
      }
    }
  }

  @override
  bool shouldRepaint(_PeintreJauge old) => old.progression != progression;
}