import 'package:pokedex/model/pokemon_model.dart';

final List<PokemonModel> dataPokemon = <PokemonModel>[
  PokemonModel(
      nama: "Bulbasaur",
      jenis: ["Grass", "Poison"],
      berat: 69,
      kemampuan: ["overgrow", "chlorophy11"],
      gambar:
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png",
      status: [
        PokemonStatus(jenis: "Hp", nilai: 45),
        PokemonStatus(jenis: "Serangan", nilai: 49),
        PokemonStatus(jenis: "Pertahanan", nilai: 49),
        PokemonStatus(jenis: "Serangan Spesial", nilai: 65),
        PokemonStatus(jenis: "Pertahanan Spesial", nilai: 65),
        PokemonStatus(jenis: "Kecepatan", nilai: 45)
      ],
      tentang:
          "Bulbasaur memiliki tubuh yang mirip dengan reptil kecil berwarna biru-hijau dengan bintik-bintik lebih gelap. Di punggungnya, terdapat tunas tanaman yang tumbuh dari proses fotosintesis. Tunas ini akan mekar ketika berevolusi menjadi Ivysaur dan Venusaur. Bulbasaur sering memanfaatkan cahaya matahari untuk mempercepat pertumbuhannya.",
      tinggi: 7),
  PokemonModel(
      nama: "Ivysaur",
      jenis: ["Grass", "Poison"],
      berat: 130,
      kemampuan: ["overgrow", "chlorophy11"],
      gambar:
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/2.png",
      status: [
        PokemonStatus(jenis: "Hp", nilai: 60),
        PokemonStatus(jenis: "Serangan", nilai: 62),
        PokemonStatus(jenis: "Pertahanan", nilai: 63),
        PokemonStatus(jenis: "Serangan Spesial", nilai: 80),
        PokemonStatus(jenis: "Pertahanan Spesial", nilai: 80),
        PokemonStatus(jenis: "Kecepatan", nilai: 60)
      ],
      tentang:
          "Ivysaur memiliki tampilan yang lebih kuat dibanding Bulbasaur. Tanaman yang ada di punggungnya mulai tumbuh lebih besar, menyerupai tunas bunga yang sedang berkembang. Tunas ini akan mekar saat berevolusi menjadi Venusaur. Ivysaur perlu berjemur di bawah sinar matahari agar tanaman di punggungnya tumbuh dengan baik. Karena tunasnya berat, Ivysaur sering berjalan dengan kaki belakang lebih kuat untuk menopang beban tersebut",
      tinggi: 10),
  PokemonModel(
      nama: "Charmeleon",
      jenis: ["Fire"],
      berat: 190,
      kemampuan: ["Blaze", "Solar Power"],
      gambar:
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png",
      status: [
        PokemonStatus(jenis: "Hp", nilai: 39),
        PokemonStatus(jenis: "Serangan", nilai: 52),
        PokemonStatus(jenis: "Pertahanan", nilai: 43),
        PokemonStatus(jenis: "Serangan Spesial", nilai: 60),
        PokemonStatus(jenis: "Pertahanan Spesial", nilai: 50),
        PokemonStatus(jenis: "Kecepatan", nilai: 65)
      ],
      tentang:
          "Charmeleon adalah Pokémon reptil yang memiliki penampilan seperti kadal besar dengan tubuh berwarna merah keemasan. Ia memiliki kemampuan untuk menghasilkan api dari mulutnya dan memiliki kecepatan tinggi.",
      tinggi: 11),
  PokemonModel(
      nama: "Charizard",
      jenis: ["Fire"],
      berat: 905,
      kemampuan: ["Blaze", "Solar Power"],
      gambar:
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png",
      status: [
        PokemonStatus(jenis: "Hp", nilai: 78),
        PokemonStatus(jenis: "Serangan", nilai: 84),
        PokemonStatus(jenis: "Pertahanan", nilai: 78),
        PokemonStatus(jenis: "Serangan Spesial", nilai: 109),
        PokemonStatus(jenis: "Pertahanan Spesial", nilai: 85),
        PokemonStatus(jenis: "Kecepatan", nilai: 100)
      ],
      tentang:
          "Charizard adalah Pokémon reptil raksasa dengan sayap besar yang memungkinkannya terbang. Ia memiliki dua bentuk: Charizard normal dan Charizard Mega. Charizard dikenal sebagai salah satu Pokémon terkuat dan paling populer.",
      tinggi: 17),
  PokemonModel(
      nama: "Squirtle",
      jenis: ["Water"],
      berat: 90,
      kemampuan: ["Torret", "Rain Dish"],
      gambar:
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/7.png",
      status: [
        PokemonStatus(jenis: "Hp", nilai: 44),
        PokemonStatus(jenis: "Serangan", nilai: 48),
        PokemonStatus(jenis: "Pertahanan", nilai: 65),
        PokemonStatus(jenis: "Serangan Spesial", nilai: 50),
        PokemonStatus(jenis: "Pertahanan Spesial", nilai: 64),
        PokemonStatus(jenis: "Kecepatan", nilai: 43)
      ],
      tentang:
          "Squirtle adalah Pokémon reptil kecil yang menyerupai kura-kura dengan cangkang biru. Mereka hidup di dekat air dan memiliki kemampuan menyemburkan air dengan tekanan tinggi.",
      tinggi: 5),
  PokemonModel(
      nama: "Blastoise",
      jenis: ["Water"],
      berat: 855,
      kemampuan: ["Torret", "Rain Dish"],
      gambar:
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/9.png",
      status: [
        PokemonStatus(jenis: "Hp", nilai: 79),
        PokemonStatus(jenis: "Serangan", nilai: 83),
        PokemonStatus(jenis: "Pertahanan", nilai: 100),
        PokemonStatus(jenis: "Serangan Spesial", nilai: 85),
        PokemonStatus(jenis: "Pertahanan Spesial", nilai: 105),
        PokemonStatus(jenis: "Kecepatan", nilai: 78)
      ],
      tentang:
          "Blastoise adalah Pokémon reptil raksasa dengan cangkang biru yang kuat dan dua meriam air di punggungnya. Mereka dapat menyemburkan air dengan tekanan sangat tinggi untuk menghancurkan lawan.",
      tinggi: 16),
  PokemonModel(
      nama: "Pikachu",
      jenis: ["Electric"],
      berat: 60,
      kemampuan: ["Static", "Lighting-Rod"],
      gambar:
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png",
      status: [
        PokemonStatus(jenis: "Hp", nilai: 35),
        PokemonStatus(jenis: "Serangan", nilai: 85),
        PokemonStatus(jenis: "Pertahanan", nilai: 30),
        PokemonStatus(jenis: "Serangan Spesial", nilai: 95),
        PokemonStatus(jenis: "Pertahanan Spesial", nilai: 45),
        PokemonStatus(jenis: "Kecepatan", nilai: 90)
      ],
      tentang:
          "Pikachu adalah Pokémon kecil yang menyerupai tikus dengan warna kuning dan merah. Mereka memiliki kemampuan menghasilkan listrik dan menyimpannya di dalam tubuhnya.",
      tinggi: 4),
  PokemonModel(
      nama: "Abra",
      jenis: ["Psychic"],
      berat: 195,
      kemampuan: ["Synchronize", "Inner-Focus", "Magic-Guard"],
      gambar:
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/63.png",
      status: [
        PokemonStatus(jenis: "Hp", nilai: 25),
        PokemonStatus(jenis: "Serangan", nilai: 20),
        PokemonStatus(jenis: "Pertahanan", nilai: 15),
        PokemonStatus(jenis: "Serangan Spesial", nilai: 105),
        PokemonStatus(jenis: "Pertahanan Spesial", nilai: 55),
        PokemonStatus(jenis: "Kecepatan", nilai: 90)
      ],
      tentang:
          "Abra adalah Pokémon manusia seperti dengan kemampuan psikis yang kuat. Mereka sering terlihat tertidur, tetapi sebenarnya sedang memantau sekitarnya.",
      tinggi: 5),
  PokemonModel(
      nama: "Meowth",
      jenis: ["Normal"],
      berat: 42,
      kemampuan: ["Pickup", "Technician", "Unnerve"],
      gambar:
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/52.png",
      status: [
        PokemonStatus(jenis: "Hp", nilai: 40),
        PokemonStatus(jenis: "Serangan", nilai: 45),
        PokemonStatus(jenis: "Pertahanan", nilai: 35),
        PokemonStatus(jenis: "Serangan Spesial", nilai: 40),
        PokemonStatus(jenis: "Pertahanan Spesial", nilai: 40),
        PokemonStatus(jenis: "Kecepatan", nilai: 90)
      ],
      tentang:
          "Meowth adalah Pokémon kucing yang cerdas dan licik. Mereka dikenal karena kemampuan berbicara dan mengumpulkan koin.",
      tinggi: 4),
  PokemonModel(
      nama: "Scyther",
      jenis: ["Bug", "Flying"],
      berat: 560,
      kemampuan: ["Swarm", "Technician", "Steadfast"],
      gambar:
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/123.png",
      status: [
        PokemonStatus(jenis: "Hp", nilai: 70),
        PokemonStatus(jenis: "Serangan", nilai: 110),
        PokemonStatus(jenis: "Pertahanan", nilai: 80),
        PokemonStatus(jenis: "Serangan Spesial", nilai: 55),
        PokemonStatus(jenis: "Pertahanan Spesial", nilai: 80),
        PokemonStatus(jenis: "Kecepatan", nilai: 105)
      ],
      tentang:
          "Scyther adalah Pokémon serangga yang mirip dengan belalang dengan kemampuan memotong yang sangat tajam. Mereka memiliki kecepatan tinggi dan kekuatan fisik yang luar biasa.",
      tinggi: 15),
  PokemonModel(
      nama: "Furret",
      jenis: ["Normal"],
      berat: 325,
      kemampuan: ["Swarm", "Technician", "Steadfast"],
      gambar:
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/162.png",
      status: [
        PokemonStatus(jenis: "Hp", nilai: 85),
        PokemonStatus(jenis: "Serangan", nilai: 76),
        PokemonStatus(jenis: "Pertahanan", nilai: 64),
        PokemonStatus(jenis: "Serangan Spesial", nilai: 45),
        PokemonStatus(jenis: "Pertahanan Spesial", nilai: 55),
        PokemonStatus(jenis: "Kecepatan", nilai: 90)
      ],
      tentang:
          "Furret adalah Pokémon berbentuk rubah dengan kemampuan berlari cepat dan kekuatan fisik yang baik. Mereka hidup di hutan dan padang rumput.",
      tinggi: 18),
  PokemonModel(
    nama: "Sandshrew",
    jenis: ["Ground"],
    berat: 120,
    kemampuan: ["Sand Veil", "Sand Rush"],
    gambar:
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/27.png",
    status: [
      PokemonStatus(jenis: "Hp", nilai: 50),
      PokemonStatus(jenis: "Serangan", nilai: 75),
      PokemonStatus(jenis: "Pertahanan", nilai: 85),
      PokemonStatus(jenis: "Serangan Spesial", nilai: 20),
      PokemonStatus(jenis: "Pertahanan Spesial", nilai: 30),
      PokemonStatus(jenis: "Kecepatan", nilai: 40),
    ],
    tentang:
        "Sandshrew adalah Pokémon kecil yang menyerupai tikus dengan kulit berwarna coklat. Mereka hidup di gurun dan padang pasir.",
    tinggi: 6,
  ),
];
