import 'package:flutter/material.dart';
import 'package:spotify_clone/widgets/album_card.dart';
import 'package:spotify_clone/widgets/song_card.dart';

import 'album_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            decoration: const BoxDecoration(
              color: Color(0xff1c7a74),
            ),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                  ],
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recently Played",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Row(
                            children: const [
                              Icon(Icons.history),
                              SizedBox(width: 16),
                              Icon(Icons.settings),
                            ],
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          AlbumCard(
                            label: "Life Goes On",
                            image: const AssetImage("assets/album4.webp"),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AlbumView(
                                    image:
                                        const AssetImage("assets/album4.webp"),
                                    key: UniqueKey(),
                                  ),
                                ),
                              );
                            },
                          ),
                          const SizedBox(width: 16),
                          AlbumCard(
                            label: "PhotoGraph",
                            image: const AssetImage("assets/album1.webp"),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AlbumView(
                                    image:
                                        const AssetImage("assets/album1.webp"),
                                    key: UniqueKey(),
                                  ),
                                ),
                              );
                            },
                          ),
                          const SizedBox(width: 16),
                          AlbumCard(
                            label: "Love Yourself",
                            image: const AssetImage("assets/album2.webp"),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AlbumView(
                                    image:
                                        const AssetImage("assets/album2.webp"),
                                    key: UniqueKey(),
                                  ),
                                ),
                              );
                            },
                          ),
                          const SizedBox(width: 16),
                          AlbumCard(
                            label: "2Step",
                            image: const AssetImage("assets/album3.webp"),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AlbumView(
                                    image:
                                        const AssetImage("assets/album3.webp"),
                                    key: UniqueKey(),
                                  ),
                                ),
                              );
                            },
                          ),
                          const SizedBox(width: 16),
                          AlbumCard(
                            label: "Perfect",
                            image: const AssetImage("assets/album5.webp"),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AlbumView(
                                    image:
                                        const AssetImage("assets/album5.webp"),
                                    key: UniqueKey(),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Good evening',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              RowAlbumCard(
                                label: "Off My Face",
                                image: AssetImage("assets/album6.webp"),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: "Changes",
                                image: AssetImage("assets/album7.webp"),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              RowAlbumCard(
                                label: "Never Not",
                                image: AssetImage("assets/album8.webp"),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: "One Right Now",
                                image: AssetImage("assets/album9.webp"),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              RowAlbumCard(
                                label: "Purpose",
                                image: AssetImage("assets/album2.webp"),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: "Shivers",
                                image: AssetImage("assets/album3.webp"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Recently played',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: const [
                              SongCard(
                                image: AssetImage("assets/album1.webp"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album2.webp"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album3.webp"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album7.webp"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album6.webp"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album4.webp"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Recommended for today',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: const [
                              SongCard(
                                image: AssetImage("assets/album5.webp"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album7.webp"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album6.webp"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album3.webp"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album1.webp"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album8.webp"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RowAlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  const RowAlbumCard({
    Key? key,
    required this.image,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4),
                bottomLeft: Radius.circular(4),
              ),
              child: Image(
                image: image,
                height: 48,
                width: 48,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 8),
            Text(label),
          ],
        ),
      ),
    );
  }
}
