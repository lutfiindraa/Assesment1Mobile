import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Icon for back navigation
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Malang, Indonesia'),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Destinasi Wisata',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              SearchBar(),
              const SizedBox(height: 10),
              const DestinationCard(
                imagePath: 'assets/bromomount.png',
                title: 'Gunung Bromo',
                location: 'Malang, Indonesia',
                rating: 4.5,
                description:
                'Gunung Bromo adalah gunung berapi aktif yang terletak di Jawa Timur, Indonesia, dan merupakan bagian dari Taman Nasional Bromo Tengger Semeru. Gunung ini terkenal dengan pemandangan matahari terbit yang spektakuler dan lautan pasir yang luas.\n\n'
                    'Dengan ketinggian 2.329 meter di atas permukaan laut, Gunung Bromo memberikan panorama luar biasa, terutama saat fajar menyingsing. Banyak wisatawan yang mendaki puncak gunung ini untuk melihat matahari terbit di antara gunung-gunung di sekitarnya.\n\n'
                    'Akses menuju kawah Bromo juga menawarkan petualangan yang mendebarkan, dengan trek yang melalui hamparan pasir vulkanik dan anak tangga yang membawa pengunjung hingga ke bibir kawah gunung berapi ini.\n\n',
              ),
              const DestinationCard(
                imagePath: 'assets/tumpaksewu.png',
                title: 'Air Terjun Tumpak Sewu',
                location: 'Malang, Indonesia',
                rating: 4.8,
                description:
                'Tumpak Sewu adalah air terjun yang megah dan terkenal sebagai salah satu yang terindah di Indonesia, terletak di Malang, Jawa Timur. Namanya berarti "seribu aliran" karena air terjun ini memiliki banyak aliran air yang membentuk tirai alami yang menuruni tebing setinggi sekitar 120 meter.\n\n'
                    'Tumpak Sewu dikelilingi oleh tebing-tebing tinggi dan lembah hijau yang subur, menciptakan pemandangan yang dramatis dan menakjubkan. Air terjun ini berasal dari Sungai Glidik dan terletak dekat dengan Gunung Semeru, gunung tertinggi di Jawa.\n\n'
                    'Meskipun pengunjung harus menuruni jalur yang cukup curam dan licin untuk mencapai dasar air terjun, pemandangan yang disajikan sepadan dengan usaha tersebut.\n\n',
              ),
              const DestinationCard(
                imagePath: 'assets/pantaisendiki.png',
                title: 'Pantai Sendiki',
                location: 'Malang, Indonesia',
                rating: 4.5,
                description:
                'Pantai Sendiki adalah pantai tersembunyi di wilayah Malang, Jawa Timur, yang menawarkan keindahan alam yang masih alami dan jauh dari keramaian. Pantai ini terkenal dengan pasir putihnya yang lembut dan ombak yang tenang, membuatnya menjadi destinasi sempurna untuk bersantai.\n\n'
                    'Pantai Sendiki dikelilingi oleh hutan hijau dan tebing yang menjulang, menciptakan suasana yang sejuk dan damai. Lokasinya yang terpencil menjadikan pantai ini lebih privat, ideal bagi pengunjung yang ingin menikmati suasana pantai tanpa banyak gangguan.\n\n'
                    'Untuk mencapai pantai ini, pengunjung harus melewati jalan setapak yang menantang, namun keindahan pantai yang menanti di ujung perjalanan membuat usaha tersebut sangat berharga.',
              ),
              const DestinationCard(
                imagePath: 'assets/paralayang.png',
                title: 'Paralayang',
                location: 'Malang, Indonesia',
                rating: 4.5,
                description:
                'Paralayang Batu adalah destinasi populer bagi penggemar olahraga ekstrem yang ingin merasakan sensasi terbang di atas ketinggian dengan pemandangan kota Batu yang indah di bawahnya. Terletak di Bukit Paralayang, lokasi ini menyediakan fasilitas bagi pengunjung yang ingin mencoba paralayang.\n\n'
                    'Dari atas bukit, pengunjung bisa menikmati panorama pegunungan yang hijau, hamparan sawah, serta pemandangan kota Batu yang memukau. Sensasi terbang di udara terbuka memberikan pengalaman yang tak terlupakan.\n\n'
                    'Selain itu, Bukit Paralayang juga menjadi spot favorit untuk menikmati matahari terbenam dengan latar langit yang berwarna-warni, membuat momen paralayang semakin berkesan.',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// SearchBar widget
class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Row(
        children: [
          Icon(Icons.search, color: Colors.grey),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// DestinationCard widget
class DestinationCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String location;
  final double rating;
  final String description;

  const DestinationCard({
    required this.imagePath,
    required this.title,
    required this.location,
    required this.rating,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Image.asset(imagePath, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                TextButton(
                  onPressed: () {
                    // Navigate to DetailPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          imagePath: imagePath,
                          title: title,
                          location: location,
                          rating: rating,
                          description: description,
                        ),
                      ),
                    );
                  },
                  child: const Text('Read More ➡'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// DetailPage widget
class DetailPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String location;
  final double rating;
  final String description;

  const DetailPage({
    required this.imagePath,
    required this.title,
    required this.location,
    required this.rating,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imagePath, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.location_on, color: Colors.green),
                      const SizedBox(width: 5),
                      Text(location),
                      const Spacer(),
                      const Icon(Icons.star, color: Colors.amber),
                      const SizedBox(width: 5),
                      Text(rating.toString()),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    description,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
