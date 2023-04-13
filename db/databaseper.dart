import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../src/proflutter/modelos/per_models.dart';

class DataBasePer {
  static Future<Database> _openDB() async {
    return openDatabase(join(await getDatabasesPath(), 'notes.db'),
        onCreate: (db, version) {
      return db.execute(
        "CREATE TABLE notes (id INTEGER PRIMARY KEY, nameper TEXT, lastper TEXT, ageper INTEGER, addressper TEXT)",
      );
    }, version: 1);
  }

  static Future<Future<int>> insert(PerModels note) async {
    Database database = await _openDB();

    return database.insert("notes", note.toMap());
  }

  static Future<List<PerModels>> notes() async {
    Database database = await _openDB();

    final List<Map<String, dynamic>> notesMap = await database.query("notes");

    for (var n in notesMap) {
      print("______" + n['name']);
    }

    return List.generate(
        notesMap.length,
        (i) => PerModels(
            id: notesMap[i]['id'],
            nameper: notesMap[i]['nameper'],
            lastper: notesMap[i]['lastper'],
            ageper: notesMap[i]['ageper'],
            addressper: notesMap[i]['addressper']));
  }
}
