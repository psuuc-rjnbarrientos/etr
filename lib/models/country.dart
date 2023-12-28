class Country {
  const Country({
    required this.id,
    required this.continentId,
    required this.name,
    this.geography,
    this.genInfo,
    this.imageUrl,
  });

  final int id;
  final int continentId;
  final String name;
  final List<String>? geography;
  final List<String>? genInfo;
  final String? imageUrl;
}
