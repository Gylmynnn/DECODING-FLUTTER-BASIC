class PokemonModel {
  final String nama;
  final int berat;
  final int tinggi;
  final String gambar;
  final List<PokemonStatus> status;
  final List<String> jenis;
  final List<String> kemampuan;
  final String tentang;

  PokemonModel(
      {required this.nama,
      required this.jenis,
      required this.berat,
      required this.kemampuan,
      required this.gambar,
      required this.status,
      required this.tentang,
      required this.tinggi});
}

class PokemonStatus {
  final String jenis;
  final int nilai;

  PokemonStatus({required this.jenis, required this.nilai});
}



