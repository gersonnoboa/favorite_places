import 'dart:io';

import 'package:uuid/uuid.dart';

const _uuid = Uuid();

class PlaceLocation {
  const PlaceLocation({
    required this.latitude,
    required this.longitude,
    required this.address,
  });

  final double latitude;
  final double longitude;
  final String address;
}

class Place {
  Place({
    required this.title,
    required this.image,
    required this.location,
  }) : id = _uuid.v4();

  String id;
  String title;
  final File image;
  final PlaceLocation location;
}
