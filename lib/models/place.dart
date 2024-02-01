import 'dart:io';

import 'package:uuid/uuid.dart';

const _uuid = Uuid();

class Place {
  Place({required this.title, required this.image}) : id = _uuid.v4();

  String id;
  String title;
  final File image;
}
