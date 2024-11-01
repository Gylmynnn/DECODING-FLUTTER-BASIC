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
      nama: "Venusaur",
      jenis: ["Grass", "Poison"],
      berat: 1000,
      kemampuan: ["overgrow", "chlorophy11"],
      gambar:
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/3.png",
      status: [
        PokemonStatus(jenis: "Hp", nilai: 80),
        PokemonStatus(jenis: "Serangan", nilai: 82),
        PokemonStatus(jenis: "Pertahanan", nilai: 83),
        PokemonStatus(jenis: "Serangan Spesial", nilai: 100),
        PokemonStatus(jenis: "Pertahanan Spesial", nilai: 100),
        PokemonStatus(jenis: "Kecepatan", nilai: 80)
      ],
      tentang:
          "Ivysaur memiliki tampilan yang lebih kuat dibanding Bulbasaur. Tanaman yang ada di punggungnya mulai tumbuh lebih besar, menyerupai tunas bunga yang sedang berkembang. Tunas ini akan mekar saat berevolusi menjadi Venusaur. Ivysaur perlu berjemur di bawah sinar matahari agar tanaman di punggungnya tumbuh dengan baik. Karena tunasnya berat, Ivysaur sering berjalan dengan kaki belakang lebih kuat untuk menopang beban tersebut",
      tinggi: 20),


      PokemonModel(
      nama: "Charmander",
      jenis: ["Fire"],
      berat: 85,
      kemampuan: ["Blaze", "Solar Power"],
      gambar:
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png",
      status: [
        PokemonStatus(jenis: "Hp", nilai: 39),
        PokemonStatus(jenis: "Serangan", nilai: 52),
        PokemonStatus(jenis: "Pertahanan", nilai: 43),
        PokemonStatus(jenis: "Serangan Spesial", nilai: 60),
        PokemonStatus(jenis: "Pertahanan Spesial", nilai: 50),
        PokemonStatus(jenis: "Kecepatan", nilai: 65)
      ],
      tentang:
          "Ivysaur memiliki tampilan yang lebih kuat dibanding Bulbasaur. Tanaman yang ada di punggungnya mulai tumbuh lebih besar, menyerupai tunas bunga yang sedang berkembang. Tunas ini akan mekar saat berevolusi menjadi Venusaur. Ivysaur perlu berjemur di bawah sinar matahari agar tanaman di punggungnya tumbuh dengan baik. Karena tunasnya berat, Ivysaur sering berjalan dengan kaki belakang lebih kuat untuk menopang beban tersebut",
      tinggi: 6),


        PokemonModel(
      nama: "Charmeleon",
      jenis: ["Fire"],
      berat: 85,
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
          "Ivysaur memiliki tampilan yang lebih kuat dibanding Bulbasaur. Tanaman yang ada di punggungnya mulai tumbuh lebih besar, menyerupai tunas bunga yang sedang berkembang. Tunas ini akan mekar saat berevolusi menjadi Venusaur. Ivysaur perlu berjemur di bawah sinar matahari agar tanaman di punggungnya tumbuh dengan baik. Karena tunasnya berat, Ivysaur sering berjalan dengan kaki belakang lebih kuat untuk menopang beban tersebut",
      tinggi: 6),

        PokemonModel(
      nama: "Charizard",
      jenis: ["Fire"],
      berat: 85,
      kemampuan: ["Blaze", "Solar Power"],
      gambar:
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png",
      status: [
        PokemonStatus(jenis: "Hp", nilai: 39),
        PokemonStatus(jenis: "Serangan", nilai: 52),
        PokemonStatus(jenis: "Pertahanan", nilai: 43),
        PokemonStatus(jenis: "Serangan Spesial", nilai: 60),
        PokemonStatus(jenis: "Pertahanan Spesial", nilai: 50),
        PokemonStatus(jenis: "Kecepatan", nilai: 65)
      ],
      tentang:
          "Ivysaur memiliki tampilan yang lebih kuat dibanding Bulbasaur. Tanaman yang ada di punggungnya mulai tumbuh lebih besar, menyerupai tunas bunga yang sedang berkembang. Tunas ini akan mekar saat berevolusi menjadi Venusaur. Ivysaur perlu berjemur di bawah sinar matahari agar tanaman di punggungnya tumbuh dengan baik. Karena tunasnya berat, Ivysaur sering berjalan dengan kaki belakang lebih kuat untuk menopang beban tersebut",
      tinggi: 6),

   PokemonModel(
      nama: "Squirtle",
      jenis: ["Water"],
      berat: 85,
      kemampuan: ["Torret", "Rain Dish"],
      gambar:
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/7.png",
      status: [
        PokemonStatus(jenis: "Hp", nilai: 39),
        PokemonStatus(jenis: "Serangan", nilai: 52),
        PokemonStatus(jenis: "Pertahanan", nilai: 43),
        PokemonStatus(jenis: "Serangan Spesial", nilai: 60),
        PokemonStatus(jenis: "Pertahanan Spesial", nilai: 50),
        PokemonStatus(jenis: "Kecepatan", nilai: 65)
      ],
      tentang:
          "Ivysaur memiliki tampilan yang lebih kuat dibanding Bulbasaur. Tanaman yang ada di punggungnya mulai tumbuh lebih besar, menyerupai tunas bunga yang sedang berkembang. Tunas ini akan mekar saat berevolusi menjadi Venusaur. Ivysaur perlu berjemur di bawah sinar matahari agar tanaman di punggungnya tumbuh dengan baik. Karena tunasnya berat, Ivysaur sering berjalan dengan kaki belakang lebih kuat untuk menopang beban tersebut",
      tinggi: 5),


     PokemonModel(
      nama: "Wartortle",
      jenis: ["Water"],
      berat: 85,
      kemampuan: ["Torret", "Rain Dish"],
      gambar:
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/8.png",
      status: [
        PokemonStatus(jenis: "Hp", nilai: 39),
        PokemonStatus(jenis: "Serangan", nilai: 52),
        PokemonStatus(jenis: "Pertahanan", nilai: 43),
        PokemonStatus(jenis: "Serangan Spesial", nilai: 60),
        PokemonStatus(jenis: "Pertahanan Spesial", nilai: 50),
        PokemonStatus(jenis: "Kecepatan", nilai: 65)
      ],
      tentang:
          "Ivysaur memiliki tampilan yang lebih kuat dibanding Bulbasaur. Tanaman yang ada di punggungnya mulai tumbuh lebih besar, menyerupai tunas bunga yang sedang berkembang. Tunas ini akan mekar saat berevolusi menjadi Venusaur. Ivysaur perlu berjemur di bawah sinar matahari agar tanaman di punggungnya tumbuh dengan baik. Karena tunasnya berat, Ivysaur sering berjalan dengan kaki belakang lebih kuat untuk menopang beban tersebut",
      tinggi: 5),


       PokemonModel(
      nama: "Blastoise",
      jenis: ["Water"],
      berat: 85,
      kemampuan: ["Torret", "Rain Dish"],
      gambar:
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/9.png",
      status: [
        PokemonStatus(jenis: "Hp", nilai: 39),
        PokemonStatus(jenis: "Serangan", nilai: 52),
        PokemonStatus(jenis: "Pertahanan", nilai: 43),
        PokemonStatus(jenis: "Serangan Spesial", nilai: 60),
        PokemonStatus(jenis: "Pertahanan Spesial", nilai: 50),
        PokemonStatus(jenis: "Kecepatan", nilai: 65)
      ],
      tentang:
          "Ivysaur memiliki tampilan yang lebih kuat dibanding Bulbasaur. Tanaman yang ada di punggungnya mulai tumbuh lebih besar, menyerupai tunas bunga yang sedang berkembang. Tunas ini akan mekar saat berevolusi menjadi Venusaur. Ivysaur perlu berjemur di bawah sinar matahari agar tanaman di punggungnya tumbuh dengan baik. Karena tunasnya berat, Ivysaur sering berjalan dengan kaki belakang lebih kuat untuk menopang beban tersebut",
      tinggi: 5),


  
       PokemonModel(
      nama: "Pikachu",
      jenis: ["Electric", "Grass"],
      berat: 85,
      kemampuan: ["Torret", "Rain Dish"],
      gambar:
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png",
      status: [
        PokemonStatus(jenis: "Hp", nilai: 39),
        PokemonStatus(jenis: "Serangan", nilai: 52),
        PokemonStatus(jenis: "Pertahanan", nilai: 43),
        PokemonStatus(jenis: "Serangan Spesial", nilai: 60),
        PokemonStatus(jenis: "Pertahanan Spesial", nilai: 50),
        PokemonStatus(jenis: "Kecepatan", nilai: 65)
      ],
      tentang:
          "Ivysaur memiliki tampilan yang lebih kuat dibanding Bulbasaur. Tanaman yang ada di punggungnya mulai tumbuh lebih besar, menyerupai tunas bunga yang sedang berkembang. Tunas ini akan mekar saat berevolusi menjadi Venusaur. Ivysaur perlu berjemur di bawah sinar matahari agar tanaman di punggungnya tumbuh dengan baik. Karena tunasnya berat, Ivysaur sering berjalan dengan kaki belakang lebih kuat untuk menopang beban tersebut",
      tinggi: 5),


];
