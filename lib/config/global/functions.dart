import 'package:uuid/uuid.dart';

String generateKey() {
  var uuid = const Uuid();

  // Generate a v1 (time-based) id
  return uuid.v1();
}
