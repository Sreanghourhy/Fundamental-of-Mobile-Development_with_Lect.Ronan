import 'package:flutter/material.dart';
import 'package:new_world/Week6/Section1/EXERCISE-2/data/profile_data.dart';
import 'package:new_world/Week6/Section1/EXERCISE-2/model/profile_tile_model.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileApp(profile: ronanProfile),
  ));
}

const Color mainColor = Color(0xff5E9FCD);

class ProfileApp extends StatelessWidget {
  final ProfileData profile;

  const ProfileApp({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/boom.gif'), // Your image path
                fit: BoxFit.cover, // Adjust fit as needed
              ),
            ),
          ),
          // AppBar and Profile Content
          SafeArea(
            child: Column(
              children: [
                AppBar(
                  backgroundColor: mainColor.withOpacity(0.5), // Semi-transparent AppBar
                  title: const Text(
                    'CADT Student Profile',
                    style: TextStyle(color: Colors.white),
                  ),
                  centerTitle: true,
                  elevation: 0,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 40),
                          CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage(profile.avatarUrl),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            profile.name,
                            style: const TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 1, 2),
                            ),
                          ),
                          Text(
                            profile.position,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 82, 79, 79),
                            ),
                          ),
                          const SizedBox(height: 20),
                          ...profile.tiles.map((tile) => ProfileTile(
                                icon: tile.icon,
                                title: tile.title,
                                data: tile.value,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String data;

  const ProfileTile({
    super.key,
    required this.icon,
    required this.title,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: ListTile(
          leading: Icon(icon, color: mainColor),
          title: Text(title),
          subtitle: Text(data),
        ),
      ),
    );
  }
}
