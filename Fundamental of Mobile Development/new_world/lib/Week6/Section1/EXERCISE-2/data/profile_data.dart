// profile_data.dart
import 'package:flutter/material.dart';
import 'package:new_world/Week6/Section1/EXERCISE-2/model/profile_tile_model.dart';

final ProfileData ronanProfile = ProfileData(
  name: "Ronan OGOR",
  position: "Flutter Developer",
  avatarUrl: 'assets/img/hi.gif',
  tiles: [
    TileData(icon: Icons.phone, title: "Phone Number", value: "+123 456 7890"),
    TileData(icon: Icons.location_on, title: "Address", value: "123 Cambodia"),
    TileData(icon: Icons.email, title: "Mail", value: "ronan.ogogr@cadt.edu"),
    TileData(icon: Icons.work, title: "Company", value: "Cambodia Academy Digital of Technology"),
    TileData(icon: Icons.timer, title: "Experience", value: "5 years"),

  ],
);
