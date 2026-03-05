
class VilleSenegal {
  final String nom;
  final double lat;
  final double lon;
  final String emoji;

  const VilleSenegal({
    required this.nom,
    required this.lat,
    required this.lon,
    required this.emoji,
  });

  String get urlGoogleMaps =>
      'https://www.google.com/maps/search/?api=1&query=$lat,$lon';
}

const villesSenegal = [
  VilleSenegal(nom: 'Dakar', lat: 14.6937, lon: -17.4441, emoji: '🏙️'),
  VilleSenegal(nom: 'Saint-Louis', lat: 16.0179, lon: -16.4896, emoji: '🏛️'),
  VilleSenegal(nom: 'Ziguinchor', lat: 12.5688, lon: -16.2719, emoji: '🌴'),
  VilleSenegal(nom: 'Kaolack', lat: 14.1511, lon: -16.0726, emoji: '🏘️'),
  VilleSenegal(nom: 'Tambacounda', lat: 13.7707, lon: -13.6673, emoji: '🌿'),
];