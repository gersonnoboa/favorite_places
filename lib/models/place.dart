import 'package:uuid/uuid.dart';

const _uuid = Uuid();

class Place {
  Place({required this.title}) : id = _uuid.v4();

  String id;
  String title;
}
